# Media Optimization Guide

This project now supports modern media formats (WebP for images, WebM for videos) with safe fallbacks. The pages will automatically prefer `.webp`/`.webm` when those files exist, without breaking if they don’t.

## What changed

- Images below the fold load with `loading="lazy"` and `decoding="async"`.
- Videos use `preload="metadata"` and `playsinline` to reduce bandwidth on mobile.
- The hero (LCP) image is preloaded for faster first render.
- A small runtime script upgrades JPG/PNG to WebP and MP4/MOV to WebM when matching files exist.

## Convert your assets (macOS)

1) Install required tools (one-time):

```bash
brew install webp ffmpeg
```

2) Run the optimizer script from the repo root:

```bash
./scripts/optimize-media.sh
```

What it does:
- Converts JPG/JPEG/PNG to WebP with quality ~82 and multithreaded encoding
- Resizes oversized images to a sensible max width (1920 for hero; 1280 for before/after, mini gallery and CEO; 1600 default)
- Converts MP4/MOV to WebM (VP9 video + Opus audio) with CRF 32
- Skips files that are already optimized and up to date

Outputs are written alongside originals (e.g., `image.jpg` -> `image.webp`).

## How the site uses the new files

- If a `image.webp` exists for `image.jpg`, the page script will automatically swap the URL to use the WebP version on browsers that support it.
- For videos, if `video.webm` exists next to `video.mp4`, the page adds a WebM `<source>` before the MP4 fallback.

This approach means you can safely deploy at any time—once optimized files are present, the pages will instantly benefit without further edits.

## Tips

- Keep hero imagery under ~200–300KB after optimization when possible.
- Prefer static hero images over autoplay videos on slow networks.
- Use `background-attachment: fixed` sparingly on mobile; it can be repainted often.

## Troubleshooting

- If you get `command not found: cwebp` or `ffmpeg`, install via Homebrew as shown above.
- Optimized files not loading? Check that `.webp`/`.webm` were generated next to the originals and that filenames match exactly.
- To re-run fresh, delete generated `.webp`/`.webm` files and run the script again.
