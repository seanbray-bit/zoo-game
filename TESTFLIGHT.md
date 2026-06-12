# 🍎 Getting My Little Zoo onto TestFlight

Everything technical is already done and **build-verified** — the native iOS app
in `ios/` compiles cleanly. The remaining steps need *your* Apple login, so you
do them once in Xcode. It takes about 15–20 minutes the first time.

## What the app actually is

A tiny native iOS app that displays your live game from
`https://seanbray-bit.github.io/zoo-game/`. So:

- **Change the game** (animals, gameplay, colours) → just edit `index.html` on
  GitHub. The TestFlight app shows it **instantly** — no new upload needed.
- **Re-upload to TestFlight** only when you change the native shell itself
  (rare). Steps for that are at the bottom.

---

## Before you start (one-time)

1. You have the paid **Apple Developer Program** membership ✅ (you said so).
2. Open **Xcode** → menu **Xcode ▸ Settings ▸ Accounts** → click **+** → sign in
   with the **same Apple ID** that has the developer membership. Close Settings.

---

## Step 1 — Open the project

In Finder, go to `zoo-game/ios/` and double-click **`ZooGame.xcodeproj`**.
Xcode opens.

## Step 2 — Choose your signing team

1. In the left sidebar, click the blue **ZooGame** icon at the very top.
2. Select the **ZooGame** target, then the **Signing & Capabilities** tab.
3. Tick **Automatically manage signing** (usually already on).
4. **Team** dropdown → pick your name / developer account.
   - The **Bundle Identifier** is `com.seanbray.zoogame`. If Xcode shows a red
     error saying it's unavailable/taken, just change it to something unique
     like `com.seanbray.mylittlezoo` and pick your team again.

## Step 3 — Archive the app

1. At the top of Xcode, next to the ▶︎ button, click the device selector and
   choose **Any iOS Device (arm64)**.
   *(You cannot upload a Simulator build — it must be "Any iOS Device".)*
2. Menu **Product ▸ Archive**. Wait a few minutes while it builds.
3. When it finishes, the **Organizer** window opens showing your archive.

## Step 4 — Upload to App Store Connect

1. In the Organizer, click **Distribute App**.
2. Choose **TestFlight & App Store** (or **App Store Connect**) → **Next**.
3. Keep the default options (Upload, automatic signing) → **Next** → **Upload**.
4. Wait for "Upload Successful".

> If it says **no app record exists**, do Step 5 first, then come back and
> upload again.

## Step 5 — Create the app record (first time only)

1. Go to **https://appstoreconnect.apple.com** → **My Apps** → **＋ ▸ New App**.
2. Fill in:
   - **Platform:** iOS
   - **Name:** My Little Zoo
   - **Primary Language:** English (U.K.)
   - **Bundle ID:** pick `com.seanbray.zoogame` from the dropdown
     *(it appears once Xcode has registered it during Step 3/4)*
   - **SKU:** any code, e.g. `zoogame001`
3. Click **Create**.

## Step 6 — Turn on TestFlight

1. In App Store Connect, open your app → **TestFlight** tab.
2. Your uploaded build appears after ~5–15 min of "Processing".
3. **Internal Testing** (fastest, no review): create a group, add yourself as a
   tester (any user on your App Store Connect account). The build is available
   almost immediately.
4. **External Testing** (up to 10,000 testers via email or a public link)
   requires a quick **Beta App Review** — usually approved within a day.

## Step 7 — Install on your iPhone

1. Install the free **TestFlight** app from the App Store.
2. Sign in with the same Apple ID (or tap the invite link/email).
3. **My Little Zoo** shows up — tap **Install**. Done! 🎉

---

## Updating later

**Game content** (the fun stuff — animals, prices, gameplay):
just edit `index.html` on GitHub. Nothing to re-upload. ✨

**The native shell** (only if you change Swift code or app settings):
1. In Xcode, click the **ZooGame** target → **General** tab → increase the
   **Build** number (e.g. 1 → 2).
2. **Product ▸ Archive** → **Distribute App** → upload again (Step 3–4).

---

## If you get stuck

- **"No team" / can't select a team** → you didn't add your Apple ID in
  *Xcode ▸ Settings ▸ Accounts* (see "Before you start").
- **Bundle ID unavailable** → change it to something unique (Step 2).
- **"Missing Compliance"** → already handled; the app declares it uses no
  non-standard encryption, so you won't be asked.
- **Build appears then disappears** → it's still processing; wait and refresh.
