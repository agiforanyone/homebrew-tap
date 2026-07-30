cask "agi-for-anyone" do
  version "0.1.1"
  sha256 "41d3df2acd37aa279b48a5c95287c767a33c39590bcc7ff6fe0e6fe7d319aa41"

  url "https://github.com/agiforanyone/app/releases/download/v#{version}/AGI-for-Anyone.dmg",
      verified: "github.com/agiforanyone/app/"
  name "AGI for Anyone"
  desc "Native macOS app for Claude Code"
  homepage "https://agiforanyone.com/"

  depends_on macos: ">= :ventura"
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
