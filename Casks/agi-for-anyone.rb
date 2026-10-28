cask "agi-for-anyone" do
  version "0.2.2"
  sha256 "3d2831777425ea66999e78e671f75ab20ff4f3b6c4222c6a2eaefa3566285719"

  url "https://github.com/agiforanyone/app/releases/download/v#{version}/AGI-for-Anyone.dmg",
      verified: "github.com/agiforanyone/app/"
  name "AGI for Anyone"
  desc "Native macOS app for Claude Code"
  homepage "https://agiforanyone.com/"

  depends_on macos: :ventura

  app "AGI for Anyone.app"

  zap trash: [
    "~/Library/Application Support/com.agiforanyone.app",
    "~/Library/Caches/com.agiforanyone.app",
    "~/Library/Preferences/com.agiforanyone.app.plist",
    "~/Library/Saved Application State/com.agiforanyone.app.savedState",
    "~/Library/WebKit/com.agiforanyone.app",
    "~/Library/Application Support/agiforanyone",
    "~/.config/agiforanyone",
  ]
end
