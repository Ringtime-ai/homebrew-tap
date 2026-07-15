# Ringtime Homebrew Tap

Internal tools, installable via [Homebrew](https://brew.sh).

## Ringtime Widget

A macOS menu-bar monitor for Ringtime environments — live interactions, the
outcome 2×2, scheduler pipeline, and call-attempt quality.

```bash
brew install --cask --no-quarantine ringtime-ai/tap/ringtime-widget
```

`--no-quarantine` skips Gatekeeper for this self-signed (not notarized) app.
If you omit it, approve the app once via **System Settings → Privacy &
Security → "Open Anyway"** after first launch.

After launching (look for the Ringtime mark in the menu bar), open Settings
via the gear icon and paste your read-only database URL — ask in the team
channel if you don't have one.

### Updating

```bash
brew update && brew upgrade --cask ringtime-widget
```

Release zips are attached to this repo's releases; the app source lives in a
private repository.
