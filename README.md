# 🎉 Birthday Website — Render-ready

Fun & colourful single-page birthday site. No build step, no backend.

## 1. Personalise it (2 minutes)
Open `index.html` and edit only the `CONFIG` block near the bottom:

```js
const CONFIG = {
  name: "Bestie",                    // best friend's name
  birthday: "2026-11-20T00:00:00",   // YYYY-MM-DDTHH:MM:SS
  from: "Sreehari"
};
```

- **Photos:** put your photos in `photos/` as `1.jpg`, `2.jpg`… and
  change the 4 `<img src="https://picsum.photos/...">` lines to
  `photos/1.jpg` etc. Or send the photos to Zia and I'll swap them.
- **Timeline / reasons:** edit the text inside the Timeline and
  Reasons sections in `index.html` — they're plain text.

## 2. Deploy on Render (free)
Option A — from GitHub (recommended):
1. Create a GitHub repo, push these files (`index.html`, `render.yaml`, `README.md`, `photos/`).
2. Render dashboard → **New + → Static Site** → connect the repo.
3. Render auto-detects `render.yaml`. Publish Directory: `.`
   Build Command: leave as-is. Click **Create Static Site**.
4. You get a `https://birthday-website-xxxx.onrender.com` link to share.

Option B — without GitHub:
Render dashboard → **New + → Static Site** → **Deploy from a public Git URL**
or use the Render CLI / drag-and-drop via a repo — Render Static Sites
need a Git repo, so Option A is the normal path.

## 3. Run with Docker (optional)
The `Dockerfile` serves the site with nginx. It listens on `$PORT`
(Render sets this automatically; defaults to 80 locally).

```bash
docker build -t birthday-website .
docker run -p 8080:80 birthday-website
# open http://localhost:8080
```

On Render as a Docker Web Service instead of a Static Site:
Render dashboard → **New + → Web Service** → connect this repo →
Environment: **Docker**, Port: leave blank (uses `$PORT`).

## What's inside
- Animated gradient + floating balloons + auto confetti
- Live countdown to the birthday date in CONFIG
- Interactive cake: tap candles to blow them out
- Photo gallery, reasons grid, story timeline
- Wish wall (saves in the visitor's browser) + Happy Birthday melody button
- Mobile-friendly, single file

## Files
- `index.html` — the whole site
- `render.yaml` — tells Render it's a static site
- `Dockerfile` + `nginx.conf.template` — nginx container, `$PORT`-aware
- `photos/` — put real photos here
