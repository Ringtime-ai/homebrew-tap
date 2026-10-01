cask "ringtime-widget" do
  version "1.6.1"
  sha256 "0c549ae1bdc9fec0efc5d896300507c6c26b0e3a558f1b87b13123be08b52bbb"

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
