cask "doforu" do
  arch arm: "arm64", intel: "x64"

  version "4.0.0"
  sha256 arm:   "14da3b57d25ccb4d96ca31492bb6dc0e9c86ef09b43c06836e051f8942ab56b4",
         intel: "b65b85addf557fc410b39e26a6f5cdf28f039d00a3044af5f3b422555573b557"

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
