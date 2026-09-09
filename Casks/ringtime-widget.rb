cask "ringtime-widget" do
  version "1.1.0"
  sha256 "ed596956c4b3d28e054909b941759966247c711006fb5346fd005d096540a25f"

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

    This build is self-signed, not notarized. If macOS blocks first launch,
    approve it in System Settings → Privacy & Security → Open Anyway.
  EOS
end
