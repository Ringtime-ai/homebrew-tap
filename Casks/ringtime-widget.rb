cask "ringtime-widget" do
  version "1.0.0"
  sha256 "c3dd8685f86d64f3566c23cf7416f0b7a74e8c55eb0f37cc8cc32e680427ab2f"

  url "https://github.com/Ringtime-ai/homebrew-tap/releases/download/ringtime-widget-v#{version}/RingtimeWidget-#{version}.zip"
  name "Ringtime Widget"
  desc "Menu-bar monitor for Ringtime environments (live interactions, outcomes, pipeline)"
  homepage "https://github.com/Ringtime-ai/homebrew-tap"

  depends_on macos: ">= :sonoma"

  app "RingtimeWidget.app"

  zap trash: [
    "~/Library/Application Support/RingtimeWidget",
  ]

  caveats <<~EOS
    This app is self-signed, not notarized. Install without the quarantine flag:

      brew install --cask --no-quarantine ringtime-ai/tap/ringtime-widget

    or approve it once after first launch via
    System Settings → Privacy & Security → "Open Anyway".

    Then add your read-only DB URL in the widget's Settings (gear icon).
  EOS
end
