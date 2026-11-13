cask "doforu" do
  arch arm: "arm64", intel: "x64"

  version "4.0.1"
  sha256 arm:   "9305d4e4b09052c400b756069d6112ed85d3b6107fc0e1c0c3d7d7306b4e92f1",
         intel: "b870b9d37a0e086778c0689adb72ce2e5d4e508ecd63ba918e9f74c9cbf56a2f"

  url "https://files.doforu.ai/downloads/Doforu-#{version}-#{arch}.dmg"
  name "Doforu"
  desc "Local-first AI agent runtime with multi-agent orchestration"
  homepage "https://doforu.ai/"

  livecheck do
    url "https://files.doforu.ai/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Doforu.app"

  zap trash: [
    "~/.doforu",
    "~/Library/Application Support/Doforu",
    "~/Library/Caches/com.doforu.app",
    "~/Library/Logs/Doforu",
    "~/Library/Preferences/com.doforu.app.plist",
    "~/Library/Saved Application State/com.doforu.app.savedState",
  ]
end
