#!/usr/bin/env python3
"""Carry whisper's timings onto the edited transcript.

Usage: retime-transcript.py <raw.vtt> <clean.md> > clean.vtt

Each raw cue's words get times spread evenly across the cue; the clean words
are aligned to them by diffing the normalized word sequences, and words the
edit introduced take times interpolated from their aligned neighbours. Cues
then break at sentence or clause ends (or paragraph breaks) once they hold a
caption's worth of text, so they read like the edited prose, not whisper's
chunks.
"""
import re
import sys
from difflib import SequenceMatcher

CUE_MIN, CUE_MAX = 40, 84  # characters per cue: two 42-char caption lines


def seconds(stamp):
    h, m, s = stamp.split(":") if stamp.count(":") == 2 else ("0", *stamp.split(":"))
    return int(h) * 3600 + int(m) * 60 + float(s)


def stamp(t):
    ms = round(t * 1000)
    return f"{ms // 3600000:02}:{ms // 60000 % 60:02}:{ms // 1000 % 60:02}.{ms % 1000:03}"


def norm(word):
    return re.sub(r"[^a-z0-9]", "", word.lower())


def raw_words(vtt):
    for start, end, text in re.findall(
        r"([\d:.]+) --> ([\d:.]+)[^\n]*\n(.+?)(?:\n\n|\Z)", vtt, re.S
    ):
        words = text.split()
        a, b = seconds(start), seconds(end)
        for i, w in enumerate(words):
            yield w, a + (b - a) * i / len(words)


def main(vtt_path, md_path):
    raw = list(raw_words(open(vtt_path, encoding="utf-8").read()))
    paras = [p.split() for p in open(md_path, encoding="utf-8").read().split("\n\n")]
    clean = [(w, i == len(p) - 1) for p in paras for i, w in enumerate(p)]

    times = [None] * len(clean)
    sm = SequenceMatcher(None, [norm(w) for w, _ in raw], [norm(w) for w, _ in clean], autojunk=False)
    for a, b, n in sm.get_matching_blocks():
        for k in range(n):
            times[b + k] = raw[a + k][1]
    known = [i for i, t in enumerate(times) if t is not None]
    for lo, hi in zip([None] + known, known + [None]):
        gap = range((lo + 1) if lo is not None else 0, hi if hi is not None else len(times))
        for i in gap:
            t0 = times[lo] if lo is not None else 0.0
            t1 = times[hi] if hi is not None else t0 + 0.4 * (len(gap))
            times[i] = t0 + (t1 - t0) * (i - (lo if lo is not None else -1)) / (len(gap) + 1)

    cues, cur = [], []
    for i, (w, para_end) in enumerate(clean):
        cur.append(i)
        text = " ".join(clean[j][0] for j in cur)
        nxt = clean[i + 1][0] if i + 1 < len(clean) else "."
        orphan = nxt[-1] in ".?!" and len(text) + len(nxt) < CUE_MAX + 24
        if para_end or (len(text) >= CUE_MAX and not orphan) \
                or (len(text) >= CUE_MIN and w[-1] in ".?!") \
                or (len(text) >= 60 and w[-1] in ",;:"):
            cues.append(cur)
            cur = []
    if cur:
        cues.append(cur)

    out, prev = ["WEBVTT", ""], 0.0
    for k, cue in enumerate(cues):
        start = max(times[cue[0]], prev)
        end = times[cues[k + 1][0]] if k + 1 < len(cues) else times[cue[-1]] + 2
        end = max(end, start + 0.5)
        out += [f"{stamp(start)} --> {stamp(end)}", " ".join(clean[j][0] for j in cue), ""]
        prev = end
    sys.stdout.write("\n".join(out))


if __name__ == "__main__":
    main(*sys.argv[1:])
