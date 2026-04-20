cask "proteus" do
  version "0.2.0"
  sha256 :no_check

  url "https://github.com/GITDIDDY69/Proteus/releases/download/v#{version}/Proteus-#{version}.zip"
  name "Proteus"
  desc "Lightweight macOS virtual machine manager powered by the Apple Hypervisor Framework"
  homepage "https://github.com/GITDIDDY69/Proteus"

  livecheck do
    url "https://gitdiddy69.github.io/Proteus/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "Proteus.app"

  uninstall quit: "dev.proteus.app"

  # zap removes preferences; VM data at ~/Library/Application Support/Proteus/vms/ is intentionally
  # preserved so users do not lose virtual machines on uninstall.
  zap trash: [
    "~/Library/Preferences/dev.proteus.app.plist",
    "~/Library/Saved Application State/dev.proteus.app.savedState",
  ]
end
