cask "voxlit" do
  version "2.1.0"
  sha256 "2d62d4f39317b22bb7bcbe4dcfb41221dcda306f518c67ba1816059b05c0254e"

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
