cask "voxlit" do
  version "1.0.1"
  sha256 "eec557eacc225fdb3c0699e61a2625857119d0635513d40c88f51bf69706cfdf"

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
