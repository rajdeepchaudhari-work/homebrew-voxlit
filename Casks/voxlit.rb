cask "voxlit" do
  version "2.0.1"
  sha256 "ddbe2484be6e0a032f7124fea767c824ccaba8eaae47dfa54cb8930c8423e467"

  url "https://github.com/rajdeepchaudhari-work/voxlit/releases/download/v#{version}/voxlit-#{version}-arm64.dmg"
  name "Voxlit"
  desc "Privacy-first, offline voice dictation for macOS"
  homepage "https://voxlit.co"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "voxlit.app"

  zap trash: [
    "~/Library/Application Support/Voxlit",
    "~/Library/Application Support/voxlit",
    "~/Library/Preferences/com.electron.voxlit.plist",
    "~/Library/Preferences/co.voxlit.app.plist",
    "~/Library/Saved Application State/com.electron.voxlit.savedState",
    "~/Library/Saved Application State/co.voxlit.app.savedState",
    "~/Library/Logs/Voxlit",
  ]
end
