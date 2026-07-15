# Ringtime Homebrew Tap

Internal tools, installable via [Homebrew](https://brew.sh).

## Ringtime Widget

A macOS menu-bar monitor for Ringtime environments — live interactions, the
outcome 2×2, scheduler pipeline, and call-attempt quality.

```bash
brew tap ringtime-ai/tap
brew trust ringtime-ai/tap     # Homebrew 6+: third-party taps need explicit trust
brew install --cask ringtime-widget
```

The app is self-signed (not notarized), so macOS blocks the first launch —
approve it once via **System Settings → Privacy & Security → "Open Anyway"**.
That's a one-time step per machine.

After launching (look for the Ringtime mark in the menu bar), open Settings
via the gear icon and paste your read-only database URL — ask in the team
channel if you don't have one.

### Updating

```bash
brew update && brew upgrade --cask ringtime-widget
```

Release zips are attached to this repo's releases; the app source lives in a
private repository.
