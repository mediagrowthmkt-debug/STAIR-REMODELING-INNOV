#!/usr/bin/env bash
set -euo pipefail

# Media optimization helper for macOS (zsh/bash)
# Converts JPG/JPEG/PNG -> WebP and MP4/MOV -> WebM (VP9/Opus), with optional downscale.
# Requires: cwebp (webp), ffmpeg
# Install: brew install webp ffmpeg

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
IMG_DIRS=("$ROOT_DIR/assets/images")
VID_DIRS=("$ROOT_DIR/assets/videos")

# Create a .cache dir for logs
CACHE_DIR="$ROOT_DIR/.media-cache"
mkdir -p "$CACHE_DIR"

resize_for_path() {
  local path="$1"
  # Decide max width based on folder heuristics
  if [[ "$path" == *"/hero/"* ]]; then
    echo 1920
  elif [[ "$path" == *"/before-after/"* ]] || [[ "$path" == *"mini galeria"* ]] || [[ "$path" == *"/ceo/"* ]]; then
    echo 1280
  else
    echo 1600
  fi
}

convert_image() {
  local in="$1"
  local out="${in%.*}.webp"

  # Skip if up-to-date
  if [[ -f "$out" && "$out" -nt "$in" ]]; then
    echo "[skip] $out (up to date)"
    return 0
  fi

  local maxw
  maxw=$(resize_for_path "$in")

  # Transparent PNGs: prefer near-lossless
  if [[ "$in" =~ \.(png|PNG)$ ]]; then
    echo "[img] $in -> $out (PNG near-lossless, max ${maxw}px)"
    cwebp -m 6 -z 9 -alpha_q 85 -q 82 -resize "$maxw" 0 "$in" -o "$out" >/dev/null 2>>"$CACHE_DIR/cwebp.log" || return 1
  else
    echo "[img] $in -> $out (JPEG lossy q82, max ${maxw}px)"
    cwebp -m 6 -mt -q 82 -resize "$maxw" 0 "$in" -o "$out" >/dev/null 2>>"$CACHE_DIR/cwebp.log" || return 1
  fi
}

convert_video() {
  local in="$1"
  local base_noext="${in%.*}"
  local out="$base_noext.webm"

  if [[ -f "$out" && "$out" -nt "$in" ]]; then
    echo "[skip] $out (up to date)"
    return 0
  fi

  echo "[vid] $in -> $out (VP9/Opus CRF 32)"
  ffmpeg -y -i "$in" \
    -c:v libvpx-vp9 -b:v 0 -crf 32 -row-mt 1 -threads 4 \
    -c:a libopus -b:a 96k \
    -movflags +faststart \
    "$out" >/dev/null 2>>"$CACHE_DIR/ffmpeg.log" || return 1
}

# Convert images
for d in "${IMG_DIRS[@]}"; do
  if [[ -d "$d" ]]; then
    while IFS= read -r -d '' f; do
      convert_image "$f"
    done < <(find "$d" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) -print0)
  fi
done

# Convert videos
for d in "${VID_DIRS[@]}"; do
  if [[ -d "$d" ]]; then
    while IFS= read -r -d '' f; do
      convert_video "$f"
    done < <(find "$d" -type f \( -iname '*.mp4' -o -iname '*.mov' \) -print0)
  fi
done

echo "\nAll media optimized. You can now serve .webp/.webm (the pages will auto-upgrade when files exist)."
