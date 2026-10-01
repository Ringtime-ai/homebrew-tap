cask "ringtime-widget" do
  version "1.5.2"
  sha256 "e873eac5b8cdb9d527e04b36418d504f536a7e788a80fbaa8071160fdeb6e492"

  url "https://github.com/Ringtime-ai/homebrew-tap/releases/download/ringtime-widget-v#{version}/RingtimeWidget-#{version}.zip"
  name "Pingtime"
  desc "Live Calls and WhatsApp counts for Ringtime production and staging"
  homepage "https://github.com/Ringtime-ai/homebrew-tap"

  depends_on macos: :sonoma
  depends_on formula: "awscli"
  depends_on cask: "session-manager-plugin"

  app "RingtimeWidget.app"

  zap trash: "~/Library/Application Support/RingtimeWidget"

  caveats <<~EOS
    Open Pingtime from the menu bar, then Settings → Sign in with Ringtime.
    If macOS asks for Keychain access, choose Always Allow.

    This build is not notarized. If macOS blocks first launch,
    approve it in System Settings → Privacy & Security → Open Anyway.
  EOS
end
