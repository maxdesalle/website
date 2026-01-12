#!/usr/bin/env bash
set -euo pipefail

IN="${1:?pass input .md (e.g., content/posts/understanding-many-worlds.md)}"
ASSETS_DIR="static"
OUT_DIR="${OUT_DIR:-static/downloads}"
HEADER="scripts/header.tex"
LUA_FILTER="scripts/slugify.lua"

mkdir -p "$OUT_DIR"
BASENAME="$(basename "${IN%.md}")"
PDF_OUT="${OUT_DIR}/${BASENAME}.pdf"
EPUB_OUT="${OUT_DIR}/${BASENAME}.epub"
COVER="${ASSETS_DIR}/solvay-conference.jpg"  # change if needed

TMP="$(mktemp -t mw-XXXXXX).md"
cp "$IN" "$TMP"

# Remove Hugo TOC shortcode
perl -0777 -i -pe 's{\{\{<\s*toc\s*>\}\}\s*}{}g' "$TMP"

# {{< info >}} or {{< info type="..." >}} → Markdown blockquote
perl -0777 -i -pe '
  s{\{\{<\s*info(?:\s+type="([^"]*)")?\s*>\}\}([\s\S]*?)\{\{<\s*/info\s*>\}\}}{
    my $type = $1 // "info";
    my $label = ucfirst($type);
    my $b=$2; $b =~ s/^\s+|\s+$//g;
    my @lines = split(/\n/, $b, -1);
    my $out = "> **${label}**\n";
    $out .= join("\n", map { length($_) ? ("> " . $_) : ">" } @lines);
    "\n\n$out\n\n";
  }ge
' "$TMP"

# {{< further-reading >}} → Markdown section
perl -0777 -i -pe '
  s{\{\{<\s*further-reading(?:\s+title="([^"]*)")?\s*>\}\}([\s\S]*?)\{\{<\s*/further-reading\s*>\}\}}{
    my $title = $1 // "Further Reading";
    my $content = $2;
    $content =~ s/^\s+|\s+$//g;
    "\n\n---\n\n**${title}**\n\n${content}\n\n";
  }ge
' "$TMP"

# <figure>… → Markdown image w/ caption
perl -0777 -i -pe '
  s{
    <figure>\s*
      <img\s+[^>]*src="([^"]+)"[^>]*/?>\s*
      <figcaption[^>]*>([\s\S]*?)</figcaption>\s*
    </figure>
  }{ "![${2}](${1})" }gex
' "$TMP"

# Absolute image paths → local static/
perl -0777 -i -pe "s{\\((/[^)]+)\\)}{(${ASSETS_DIR}\\1)}g" "$TMP"

FROM='markdown+raw_tex+raw_html+tex_math_dollars+tex_math_single_backslash+smart'

# ---------- PDF ----------
pandoc "$TMP" \
  --from="$FROM" \
  --pdf-engine=pdflatex \
  -H "$HEADER" \
  --lua-filter="$LUA_FILTER" \
  --resource-path=".:${ASSETS_DIR}" \
  --metadata=link-citations:true \
  -M author="Maxime Desalle" \
  -V classoption=twocolumn \
  --listings \
  -o "$PDF_OUT"

# ---------- EPUB ----------
EPUB_ARGS=(
  --from="$FROM"
  --lua-filter="$LUA_FILTER"
  --resource-path=".:${ASSETS_DIR}"
  --metadata=link-citations:true
  -M author="Maxime Desalle"
  --toc --toc-depth=3
  --mathml            # most portable for EPUB3
  -o "$EPUB_OUT"
)
if [ -f "$COVER" ]; then
  EPUB_ARGS+=( --epub-cover-image="$COVER" )
fi

pandoc "$TMP" "${EPUB_ARGS[@]}"

echo "✔ PDF : $PDF_OUT"
echo "✔ EPUB: $EPUB_OUT"
