cask "voxlit" do
  version "1.0.4"
  sha256 "e8b4be89cb43f35058e8f0c118d2115f22d74aaaa08e567eab352bce0d9a35d1"

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
