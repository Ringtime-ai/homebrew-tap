cask "ringtime-widget" do
  version "1.2.1"
  sha256 "cc89de58b37bf10cd011c20b9850b6ab3368ba87b491bb99a8df087318a12a16"

  url "https://github.com/Ringtime-ai/homebrew-tap/releases/download/ringtime-widget-v#{version}/RingtimeWidget-#{version}.zip"
  name "Ringtime Widget"
  desc "Live Calls and WhatsApp counts for Ringtime production and staging"
  homepage "https://github.com/Ringtime-ai/homebrew-tap"

  depends_on macos: :sonoma
  depends_on formula: "awscli"
  depends_on cask: "session-manager-plugin"

  app "RingtimeWidget.app"

  zap trash: "~/Library/Application Support/RingtimeWidget"

  caveats <<~EOS
    Install Ringtime Hat using the team setup guide and run hat init once.
    Open the widget and choose Connect AWS. You need an approved tunnel-capable
    AWS profile and a read-only database password for each environment.
    The app discovers the connection details and stores passwords in Keychain.

    This build is not notarized. If macOS blocks first launch,
    approve it in System Settings → Privacy & Security → Open Anyway.
  EOS
end
