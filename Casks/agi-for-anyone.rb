cask "agi-for-anyone" do
  version "0.2.1"
  sha256 "ebde20d4e00f8bc598c9c2092da5e3c6fd6996243495cb7bf30d3aed74d4accb"

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
