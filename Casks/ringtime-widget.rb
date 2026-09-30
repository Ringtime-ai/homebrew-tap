cask "ringtime-widget" do
  version "1.4.1"
  sha256 "5c6ad9f9476165e8e4c9173daf021168c8727e408fc304fb97cb9dce8c9acfe9"

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
