#!/usr/bin/env bash
set -euo pipefail
source ~/.zshrc 2>/dev/null || true

# Download, prepare, transcribe, and upload self-hosted media on macOS.
#
# Usage:
#   media-pipeline.sh --url <URL> --slug <slug> --source <youtube|x> \
#     [--transcribe] [--audio] [--kind podcast|talks|piano] [--no-upload]
#
# Project matrix:
#   podcast ep1  youtube  --audio --transcribe
#   podcast ep2  youtube  --audio --transcribe
#   talk-1       x        --transcribe
#   piano-1      youtube
#   piano-2      x
#   piano-3      x
#
# A scoped API token with Stream:Edit + R2:Edit is safer than a global API key.
# A further LLM cleanup pass for false starts and stutters is run separately by
# the caller; this script only performs deterministic filler-token cleanup.

log() {
  printf '%s\n' "$*" >&2
}

die() {
  log "Error: $*"
  exit 1
}

usage() {
  cat <<'EOF'
Usage: media-pipeline.sh --url <URL> --slug <slug> --source <youtube|x> [options]

Options:
  --transcribe                 Generate VTT, text, and site transcript files
  --audio                      Generate a 128 kbps MP3 (podcasts only)
  --kind <podcast|talks|piano> R2 key prefix; inferred from known slug prefixes
  --no-upload                  Skip Cloudflare Stream and R2 uploads
  -h, --help                   Show this help
EOF
}

require_command() {
  command -v "$1" >/dev/null 2>&1 || die "Required command not found: $1"
}

URL=""
SLUG=""
SOURCE=""
KIND=""
TRANSCRIBE=false
AUDIO=false
NO_UPLOAD=false

while (($# > 0)); do
  case "$1" in
    --url|--slug|--source|--kind)
      (($# >= 2)) || die "$1 requires a value"
      case "$1" in
        --url) URL=$2 ;;
        --slug) SLUG=$2 ;;
        --source) SOURCE=$2 ;;
        --kind) KIND=$2 ;;
      esac
      shift 2
      ;;
    --transcribe)
      TRANSCRIBE=true
      shift
      ;;
    --audio)
      AUDIO=true
      shift
      ;;
    --no-upload)
      NO_UPLOAD=true
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    --)
      shift
      (($# == 0)) || die "Unexpected positional arguments: $*"
      ;;
    -*)
      die "Unknown option: $1 (use --help for usage)"
      ;;
    *)
      die "Unexpected positional argument: $1 (use --help for usage)"
      ;;
  esac
done

[[ -n "$URL" ]] || die "Missing required option: --url"
[[ -n "$SLUG" ]] || die "Missing required option: --slug"
[[ -n "$SOURCE" ]] || die "Missing required option: --source"
[[ "$SOURCE" == "youtube" || "$SOURCE" == "x" ]] || \
  die "--source must be one of: youtube, x"
[[ "$SLUG" != */* && "$SLUG" != "." && "$SLUG" != ".." ]] || \
  die "--slug must be a single safe path component"
[[ "$SLUG" =~ ^[A-Za-z0-9][A-Za-z0-9._-]*$ ]] || \
  die "--slug may contain only letters, numbers, dots, underscores, and hyphens"

if [[ -z "$KIND" ]]; then
  case "$SLUG" in
    podcast*|ep1|ep2) KIND="podcast" ;;
    talk*) KIND="talks" ;;
    piano*) KIND="piano" ;;
    *) die "Cannot infer --kind from slug '$SLUG'; pass --kind podcast, talks, or piano" ;;
  esac
fi
[[ "$KIND" == "podcast" || "$KIND" == "talks" || "$KIND" == "piano" ]] || \
  die "--kind must be one of: podcast, talks, piano"
if [[ "$AUDIO" == true && "$KIND" != "podcast" ]]; then
  die "--audio is supported only with --kind podcast"
fi

require_command yt-dlp
require_command ffmpeg
require_command ffprobe
if [[ "$NO_UPLOAD" == false ]]; then
  require_command curl

  missing=()
  for name in CF_ACCOUNT_ID R2_BUCKET CDN_BASE; do
    [[ -n "${!name:-}" ]] || missing+=("$name")
  done
  if [[ -z "${CF_API_TOKEN:-}" ]]; then
    [[ -n "${CF_ACCOUNT_EMAIL:-}" ]] || missing+=("CF_ACCOUNT_EMAIL")
    [[ -n "${CLOUDFLARE_API_KEY:-}" ]] || missing+=("CLOUDFLARE_API_KEY")
  fi
  if ((${#missing[@]} > 0)); then
    die "Missing upload environment variable(s): ${missing[*]}"
  fi
fi

WORKDIR="./media-work/$SLUG"
TRANSCRIPT_DIR="$WORKDIR/transcripts"
ASSET_TRANSCRIPT_DIR="./assets/transcripts"
mkdir -p "$WORKDIR"

if [[ "$SOURCE" == "youtube" ]]; then
  MASTER="$WORKDIR/$SLUG.master.mkv"
else
  MASTER="$WORKDIR/$SLUG.master.mp4"
fi
VIDEO="$WORKDIR/$SLUG.1080.mp4"
MP3="$WORKDIR/$SLUG.mp3"
VTT="$TRANSCRIPT_DIR/$SLUG.vtt"
PLAIN_TXT="$TRANSCRIPT_DIR/$SLUG.txt"
CLEAN_TXT="$TRANSCRIPT_DIR/$SLUG.clean.txt"
ASSET_MD="$ASSET_TRANSCRIPT_DIR/$SLUG.md"
ASSET_VTT="$ASSET_TRANSCRIPT_DIR/$SLUG.vtt"
STREAM_UID=""
STREAM_UID_FILE="$WORKDIR/.stream-uid"
if [[ -s "$STREAM_UID_FILE" ]]; then
  STREAM_UID=$(<"$STREAM_UID_FILE")
fi

download_master() {
  if [[ -s "$MASTER" ]]; then
    log "[1/6] Master exists; skipping: $MASTER"
    return
  fi

  log "[1/6] Downloading Stream master"
  if [[ "$SOURCE" == "youtube" ]]; then
    yt-dlp -f "bv*[height<=2160]+ba/b" --merge-output-format mkv \
      -o "$MASTER" "$URL"
  else
    # X currently caps downloads at roughly 1080p H.264.
    yt-dlp -f "bv*+ba/b" --merge-output-format mp4 -o "$MASTER" "$URL"
  fi
  [[ -s "$MASTER" ]] || die "Master download did not produce: $MASTER"
}

prepare_1080() {
  if [[ -s "$VIDEO" ]]; then
    log "[2/6] 1080p MP4 exists; skipping: $VIDEO"
    return
  fi

  log "[2/6] Preparing 1080p H.264 MP4"
  if [[ "$SOURCE" == "youtube" ]]; then
    yt-dlp -f "bv*[ext=mp4][vcodec^=avc1][height<=1080]+ba[ext=m4a]/b[ext=mp4]" \
      --merge-output-format mp4 -o "$VIDEO" "$URL"
  else
    cp -p "$MASTER" "$VIDEO"
  fi
  [[ -s "$VIDEO" ]] || die "1080p stage did not produce: $VIDEO"
}

prepare_audio() {
  [[ "$AUDIO" == true ]] || {
    log "[3/6] Audio not requested; skipping"
    return
  }
  if [[ -s "$MP3" ]]; then
    log "[3/6] MP3 exists; skipping: $MP3"
    return
  fi

  log "[3/6] Encoding 128 kbps MP3"
  yt-dlp -f bestaudio -o - "$URL" | \
    ffmpeg -i - -vn -c:a libmp3lame -b:a 128k "$MP3"
  [[ -s "$MP3" ]] || die "Audio stage did not produce: $MP3"
}

transcribe_media() {
  [[ "$TRANSCRIBE" == true ]] || {
    log "[4/6] Transcription not requested; skipping"
    return
  }
  require_command python3
  if ! python3 -c "import faster_whisper" >/dev/null 2>&1; then
    log "[4/6] faster-whisper is not installed; skipping transcription."
    log "Install it with: pip install faster-whisper"
    return
  fi

  mkdir -p "$TRANSCRIPT_DIR" "$ASSET_TRANSCRIPT_DIR"
  local input="$VIDEO"
  [[ -s "$MP3" ]] && input="$MP3"

  if [[ -s "$VTT" && -s "$PLAIN_TXT" ]]; then
    log "[4/6] Whisper outputs exist; skipping model run"
  else
    log "[4/6] Transcribing with faster-whisper large-v3"
    python3 - "$input" "$VTT" "$PLAIN_TXT" <<'PY'
import sys
from pathlib import Path
from faster_whisper import WhisperModel

source, vtt_path, txt_path = map(Path, sys.argv[1:])

def timestamp(seconds: float) -> str:
    milliseconds = max(0, round(seconds * 1000))
    hours, remainder = divmod(milliseconds, 3_600_000)
    minutes, remainder = divmod(remainder, 60_000)
    secs, millis = divmod(remainder, 1000)
    return f"{hours:02d}:{minutes:02d}:{secs:02d}.{millis:03d}"

model = WhisperModel("large-v3")
segments, _ = model.transcribe(str(source))
with vtt_path.open("w", encoding="utf-8") as vtt, txt_path.open("w", encoding="utf-8") as txt:
    vtt.write("WEBVTT\n\n")
    for segment in segments:
        text = segment.text.strip()
        if not text:
            continue
        vtt.write(f"{timestamp(segment.start)} --> {timestamp(segment.end)}\n{text}\n\n")
        txt.write(text + "\n")
PY
  fi

  if [[ -s "$CLEAN_TXT" ]]; then
    log "[4/6] Clean transcript exists; skipping filler cleanup"
  else
    log "[4/6] Applying deterministic filler cleanup"
    python3 - "$PLAIN_TXT" "$CLEAN_TXT" <<'PY'
import re
import sys
from pathlib import Path

source, destination = map(Path, sys.argv[1:])
text = source.read_text(encoding="utf-8")
text = re.sub(r"(?i)\b(?:um|uh|uhm|hmm|erm|er|ah|mm)\b", "", text)
text = re.sub(r"[ \t]+", " ", text)
text = re.sub(r" *\n *", " ", text)
text = re.sub(r"\s+([,.;:!?])", r"\1", text)
text = re.sub(r"(^|[.!?]\s+)[,;:]+\s*", r"\1", text)
text = re.sub(r"([,;:])(?:\s*[,;:])+", r"\1", text)
text = re.sub(r"\s+", " ", text).strip()
destination.write_text(text + ("\n" if text else ""), encoding="utf-8")
PY
  fi

  if [[ ! -s "$ASSET_MD" ]]; then
    cp "$CLEAN_TXT" "$ASSET_MD"
  else
    log "[4/6] Site Markdown transcript exists; skipping: $ASSET_MD"
  fi
  if [[ ! -s "$ASSET_VTT" ]]; then
    cp "$VTT" "$ASSET_VTT"
  else
    log "[4/6] Site VTT transcript exists; skipping: $ASSET_VTT"
  fi
}

parse_stream_uid() {
  local response=$1
  if command -v jq >/dev/null 2>&1; then
    jq -r '.result.uid // empty' "$response"
  else
    require_command python3
    python3 - "$response" <<'PY'
import json
import sys

with open(sys.argv[1], encoding="utf-8") as handle:
    data = json.load(handle)
print((data.get("result") or {}).get("uid") or "")
PY
  fi
}

upload_stream() {
  local response auth_args
  if [[ -s "$STREAM_UID_FILE" ]]; then
    STREAM_UID=$(<"$STREAM_UID_FILE")
    log "[5/6] Stream upload already completed; skipping"
    printf 'STREAM_UID=%s\n' "$STREAM_UID"
    return
  fi

  response="$WORKDIR/.stream-response.json"
  auth_args=()
  if [[ -n "${CF_API_TOKEN:-}" ]]; then
    auth_args=(-H "Authorization: Bearer $CF_API_TOKEN")
  else
    auth_args=(-H "X-Auth-Email: $CF_ACCOUNT_EMAIL" -H "X-Auth-Key: $CLOUDFLARE_API_KEY")
  fi

  log "[5/6] Uploading master to Cloudflare Stream"
  curl --fail --silent --show-error -X POST \
    "https://api.cloudflare.com/client/v4/accounts/$CF_ACCOUNT_ID/stream" \
    "${auth_args[@]}" -F "file=@$MASTER" -o "$response"
  STREAM_UID=$(parse_stream_uid "$response")
  [[ -n "$STREAM_UID" ]] || die "Cloudflare Stream response did not contain result.uid"
  printf '%s\n' "$STREAM_UID" > "$STREAM_UID_FILE"
  rm -f "$response"
  printf 'STREAM_UID=%s\n' "$STREAM_UID"
}

print_wrangler_command() {
  local file=$1 key=$2
  printf 'wrangler r2 object put %q --file=%q\n' "$R2_BUCKET/$key" "$file" >&2
}

upload_r2_object() {
  local file=$1 key=$2 marker
  marker="$WORKDIR/.r2-${key##*/}.uploaded"
  if [[ -f "$marker" ]]; then
    log "R2 upload already completed; skipping: $key"
    return
  fi
  if command -v wrangler >/dev/null 2>&1; then
    wrangler r2 object put "$R2_BUCKET/$key" --file="$file"
    : > "$marker"
  else
    log "wrangler is not installed; run this command after installing it:"
    print_wrangler_command "$file" "$key"
  fi
}

verify_size() {
  local file=$1 url=$2 label=$3 local_bytes remote_bytes
  local_bytes=$(stat -f%z "$file")
  remote_bytes=$({ curl -sI "$url" || true; } | \
    awk -F': ' 'tolower($1)=="content-length" {gsub(/\r/, "", $2); print $2; exit}')
  if [[ -z "$remote_bytes" ]]; then
    log "Warning: $label verification returned no Content-Length: $url"
  elif [[ "$remote_bytes" != "$local_bytes" ]]; then
    log "Warning: $label size differs (local $local_bytes bytes, CDN $remote_bytes bytes)"
  else
    log "$label verified at $local_bytes bytes"
  fi
}

upload_media() {
  if [[ "$NO_UPLOAD" == true ]]; then
    log "[5/6] --no-upload set; skipping Stream and R2 uploads"
    return
  fi

  upload_stream
  upload_r2_object "$VIDEO" "$KIND/$SLUG.mp4"
  verify_size "$VIDEO" "${CDN_BASE%/}/$KIND/$SLUG.mp4" "Video"
  if [[ "$AUDIO" == true ]]; then
    upload_r2_object "$MP3" "$KIND/$SLUG.mp3"
    verify_size "$MP3" "${CDN_BASE%/}/$KIND/$SLUG.mp3" "Audio"
  fi
}

duration_hms() {
  local seconds
  seconds=$(ffprobe -v error -show_entries format=duration \
    -of default=noprint_wrappers=1:nokey=1 "$VIDEO")
  awk -v seconds="$seconds" 'BEGIN {
    total = int(seconds + 0.5)
    printf "%02d:%02d:%02d", int(total / 3600), int((total % 3600) / 60), total % 60
  }'
}

print_backfill() {
  local video_bytes audio_bytes duration cdn_root
  video_bytes=$(stat -f%z "$VIDEO")
  duration=$(duration_hms)
  cdn_root=${CDN_BASE:-<CDN_BASE>}
  cdn_root=${cdn_root%/}

  printf '\n===== MEDIA BACKFILL BEGIN =====\n'
  printf 'STREAM_UID=%s\n' "$STREAM_UID"
  printf 'VIDEO_URL=%s\n' "$cdn_root/$KIND/$SLUG.mp4"
  printf 'VIDEO_BYTES=%s\n' "$video_bytes"
  if [[ "$AUDIO" == true ]]; then
    audio_bytes=$(stat -f%z "$MP3")
    printf 'AUDIO_URL=%s\n' "$cdn_root/$KIND/$SLUG.mp3"
    printf 'AUDIO_BYTES=%s\n' "$audio_bytes"
  fi
  if [[ -s "$ASSET_MD" ]]; then
    printf 'TRANSCRIPT_FILE=%s\n' "assets/transcripts/$SLUG.md"
  fi
  printf 'DURATION=%s\n' "$duration"
  printf '===== MEDIA BACKFILL END =====\n'
}

download_master
prepare_1080
prepare_audio
transcribe_media
upload_media
log "[6/6] Media pipeline complete"
print_backfill
