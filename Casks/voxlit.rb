cask "voxlit" do
  version "1.0.0"
  sha256 "9a081a3f85017c3011989038c449f7a726a89b0427d80662d03babcbb5f75db8"

  url "https://github.com/rajdeepchaudhari-work/voxlit/releases/download/v#{version}/Voxlit-#{version}-arm64.dmg"
  name "Voxlit"
  desc "Privacy-first, offline voice dictation for macOS"
  homepage "https://github.com/rajdeepchaudhari-work/voxlit"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Voxlit.app"

  zap trash: [
    "~/Library/Application Support/Voxlit",
    "~/Library/Preferences/app.voxlit.plist",
    "~/Library/Saved Application State/app.voxlit.savedState",
  ]
end
