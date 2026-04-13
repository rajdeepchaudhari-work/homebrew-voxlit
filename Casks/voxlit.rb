cask "voxlit" do
  version "1.0.3"
  sha256 "8dcb5a08d006aa350c7dafa4476ddad3ab0ccd85f1c266345154a2d315c25ce1"

  url "https://github.com/rajdeepchaudhari-work/voxlit/releases/download/v#{version}/voxlit-#{version}-arm64.dmg"
  name "Voxlit"
  desc "Privacy-first, offline voice dictation for macOS"
  homepage "https://voxlit.co"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Voxlit.app"

  zap trash: [
    "~/Library/Application Support/Voxlit",
    "~/Library/Preferences/app.voxlit.plist",
    "~/Library/Saved Application State/app.voxlit.savedState",
  ]
end
