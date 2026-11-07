# 🎉 Birthday Website — Render-ready

Fun & colourful single-page birthday site. No build step, no backend.

## 1. Personalise it (2 minutes)
Open `index.html` and edit only the `CONFIG` block near the bottom:

```js
const CONFIG = {
  name: "Bestie",                    // best friend's name
  birthday: "2026-11-20T00:00:00",   // YYYY-MM-DDTHH:MM:SS
  from: "Hari"
};
```

- **Love message:** edit the text inside the "Happy Birthday My
  Love" section in `index.html` — it's plain text.

## 2. Deploy on Render (free)
Option A — from GitHub (recommended):
1. Create a GitHub repo, push these files (`index.html`, `render.yaml`, `README.md`).
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
- Opening card for the birthday date in CONFIG — before the day
  it says "Opens in X days", on the day it opens with confetti
- Interactive cake: tap candles to blow them out
- "Happy Birthday My Love" message
- One section at a time: tap the card (or Next) to go on — the
  old one vanishes and the next pops in, with dots showing 1/2/3
- Custom song (`song.m4a`) that tries to autoplay on load and
  loops. Browsers block audible autoplay until the first tap /
  click / keypress, so it also starts on that first interaction
  (including the phone volume keys) or on the 🔊 volume button
  at the top-right — click it again to pause.
- Mobile-friendly, single file

## Files
- `index.html` — the whole site
- `render.yaml` — tells Render it's a static site
- `Dockerfile` + `nginx.conf.template` — nginx container, `$PORT`-aware
