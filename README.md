# 🦁 My Little Zoo

A small 2D zoo game for iPhone. You look after animals — feed them, keep them
happy, and earn coins from visitors to buy more animals.

It's built as **one HTML file** on purpose, so you can edit and update it
straight from your phone.

---

## ▶️ Play it right now

**On this Mac:** double-click `index.html` — it opens in your browser.

**On your phone (live):** https://seanbray-bit.github.io/zoo-game/

**On GitHub:** https://github.com/seanbray-bit/zoo-game

---

## 🎮 How to play

1. Tap an empty **pen** (enclosure), then tap an animal in the shop at the
   bottom to buy and place it.
2. Tap an animal to **feed** it. Fed animals are happy. 🍽️ means hungry.
3. Happy animals attract **visitors**, and visitors pay you **coins** 🪙.
4. Spend coins on bigger, fancier animals.

Your progress saves automatically on the device.

---

## 📱 Update it from your phone (the main thing you asked for)

The easiest setup: put this folder on **GitHub**, then host it free with
**GitHub Pages**. After that you can edit the game from the GitHub app/website
on your phone and the live game updates in seconds.

One-time setup (do this once, on the Mac):

1. Make a free account at https://github.com
2. Create a new repository called `zoo-game`.
3. In Terminal, run these from inside this folder:
   ```
   cd "/Users/sb/zoo-game"
   git init
   git add .
   git commit -m "My zoo game"
   git branch -M main
   git remote add origin https://github.com/YOUR-USERNAME/zoo-game.git
   git push -u origin main
   ```
4. On GitHub: **Settings → Pages → Source: main branch → Save.**
   After a minute your game is live at
   `https://YOUR-USERNAME.github.io/zoo-game/`

From your phone after that:

- Open that link in **Safari**, tap the **Share** button, then
  **"Add to Home Screen."** Now it looks and runs like a real app (full screen,
  its own icon).
- To **change the game on your phone**: open the repo in the GitHub app, tap
  `index.html`, tap the pencil ✏️, make your edit, and **Commit**. The live game
  updates automatically.

> Tip: `index.html` has comments at the top of the `<script>` showing the
> easiest things to change first (add animals, starting coins, number of pens).

---

## 🍎 TestFlight (native iOS app)

There's a ready-to-go native iOS app in the **`ios/`** folder. It's a thin Swift
shell that displays your live game, so it can go on **TestFlight** / the App
Store. It's already build-verified in Xcode.

👉 Full step-by-step upload guide: **[TESTFLIGHT.md](TESTFLIGHT.md)**

The neat part: once it's on TestFlight, editing `index.html` on GitHub updates
the game inside the app instantly — you only re-upload if you change the native
shell.

---

## 📂 Files

- `index.html` — the whole game (**edit this one** for gameplay changes).
- `manifest.json` / `icon.svg` — make it installable as a home-screen web app.
- `ios/` — the native iOS app for TestFlight (open `ios/ZooGame.xcodeproj`).
- `TESTFLIGHT.md` — how to upload to TestFlight.
- `README.md` — this file.
