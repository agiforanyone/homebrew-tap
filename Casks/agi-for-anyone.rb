cask "agi-for-anyone" do
  version "0.1.2"
  sha256 "8dbeb5bb4288859c635bc52b5296da04327029c0384b4a25b64c1e67ad1aa5d9"

  url "https://github.com/agiforanyone/app/releases/download/v#{version}/AGI-for-Anyone.dmg",
      verified: "github.com/agiforanyone/app/"
  name "AGI for Anyone"
  desc "Native macOS app for Claude Code"
  homepage "https://agiforanyone.com/"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AGI for Anyone.app"

  zap trash: [
    "~/Library/Application Support/com.agiforanyone.app",
    "~/Library/Caches/com.agiforanyone.app",
    "~/Library/Preferences/com.agiforanyone.app.plist",
    "~/Library/Saved Application State/com.agiforanyone.app.savedState",
    "~/Library/WebKit/com.agiforanyone.app",
  ]
end
