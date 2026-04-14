cask "voxlit" do
  version "1.0.8"
  sha256 "5c33f112d55d558997041b1c8392e73552f4580ec728f1595ad607b01fae7760"

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
