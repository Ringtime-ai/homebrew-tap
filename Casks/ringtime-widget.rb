cask "ringtime-widget" do
  version "1.5.1"
  sha256 "7cd49b06dd0234d01c9efdbca0e89d9ffaf782b7cd0960063d789e0b566a90bd"

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
