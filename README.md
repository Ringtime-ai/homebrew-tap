# Ringtime Homebrew Tap

Internal tools, installable via [Homebrew](https://brew.sh/).

## Ringtime Widget

A compact macOS menu-bar widget showing active Calls and WhatsApp conversations in production and staging. Supports Apple Silicon and Intel on macOS Sonoma or later.

```sh
brew tap ringtime-ai/tap
brew install --cask ringtime-widget
open /Applications/RingtimeWidget.app
```

If your Homebrew version asks you to trust this tap, run `brew trust ringtime-ai/tap` before installing.

The app is self-signed, not notarized. If macOS blocks first launch, approve it through **System Settings → Privacy & Security → Open Anyway**.

### First run

Homebrew installs AWS CLI and the Session Manager plugin. Install the private Ringtime Hat package using the team guide, then run `hat init` to sign in and discover your profiles.

Settings opens on first launch. Choose **Connect AWS**, select an approved profile, and enter your read-only database username and password. The widget discovers the endpoint, verifies the connection, and saves credentials in Keychain. Repeat for the other environment.

Each user needs an approved tunnel-capable AWS profile and a read-only database login from their administrator. The app does not grant access or create database users. Prefer individual database logins so access can be revoked separately.

Startup and refresh never open Keychain permission dialogs. If permission is needed, choose **Settings → Unlock saved connections**.

### Updating

Quit the widget first so it can close its temporary tunnels, then:

```sh
brew update
brew upgrade --cask ringtime-widget
open /Applications/RingtimeWidget.app
```

Saved settings and Keychain credentials are retained. Release ZIPs are attached to this repository's releases; the app source lives in a private repository.
