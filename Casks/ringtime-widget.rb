cask "ringtime-widget" do
  version "1.0.1"
  sha256 "d72682f1e72c7f5fd0b77fc0b57e9a03e27fe25ecb8444977c4a7765488a0654"

  url "https://github.com/Ringtime-ai/homebrew-tap/releases/download/ringtime-widget-v#{version}/RingtimeWidget-#{version}.zip"
  name "Ringtime Widget"
  desc "Menu-bar monitor for Ringtime environments (live interactions, outcomes, pipeline)"
  homepage "https://github.com/Ringtime-ai/homebrew-tap"

  depends_on macos: :sonoma

  app "RingtimeWidget.app"

  zap trash: [
    "~/Library/Application Support/RingtimeWidget",
  ]

  caveats <<~EOS
    This app is self-signed, not notarized. On first launch macOS will block it —
    approve it once via System Settings → Privacy & Security → "Open Anyway".

    Then add your read-only DB URL in the widget's Settings (gear icon).
  EOS
end
