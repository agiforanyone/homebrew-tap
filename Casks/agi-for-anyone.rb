cask "agi-for-anyone" do
  version "0.2.0"
  sha256 "e178811dfc2ba78c52d77c26785efd38c9abc4f37e9f275da4ead274b8599a95"

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
  ]
end
