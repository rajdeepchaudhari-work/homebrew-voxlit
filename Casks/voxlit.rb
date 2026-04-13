cask "voxlit" do
  version "1.0.4"
  sha256 "5bcbc8eb3675219a864eb8e9ada7d21c4d27dd803503e69534dc8bb6a79a6f3f"

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
