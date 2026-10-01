cask "ringtime-widget" do
  version "1.6.0"
  sha256 "ea4144f57ec5ba757ee3e4a4875c045279de0f64a82a32046fd0f4b53d84e4f6"

  url "https://github.com/Ringtime-ai/homebrew-tap/releases/download/ringtime-widget-v#{version}/RingtimeWidget-#{version}.zip"
  name "Pingtime"
  desc "Live Calls and WhatsApp counts for Ringtime production and staging"
  homepage "https://github.com/Ringtime-ai/homebrew-tap"

  depends_on macos: :sonoma

  app "RingtimeWidget.app"

  zap trash: "~/Library/Application Support/RingtimeWidget"

  caveats <<~EOS
    Open Pingtime from the menu bar, then Settings → Sign in with Ringtime.
    If macOS asks for Keychain access, choose Always Allow.

    This build is not notarized. If macOS blocks first launch,
    approve it in System Settings → Privacy & Security → Open Anyway.
  EOS
end
