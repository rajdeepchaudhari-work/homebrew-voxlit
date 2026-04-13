cask "voxlit" do
  version "1.0.7"
  sha256 "41e80d648d06e94432660cbdbcd2811d7d27aa229a71f9910188c2d21cd0fbba"

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
