cask "doforu" do
  arch arm: "arm64", intel: "x64"

  version "3.6.5"
  sha256 arm:   "9b4dafefa86a739ca9fbc22ec8e105f9d78918a61742dfca0bb932b3d1e9d136",
         intel: "fb21c5058c671a30fafedcd08a501de9abce73c3d76d751a30e47feb9794fbe7"

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
