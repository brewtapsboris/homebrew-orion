cask "orion" do
  version "0.99.134.2"
  sha256 "cce927182fca3e3732f314b439b67b16f913afe7136ecc9b981bd7821e7d4353"

  url "https://downloads.kagi.com/orion/Orion-#{version}.dmg"
  name "Orion"
  desc "Privacy-focused WebKit browser"
  homepage "https://browser.kagi.com/"

  app "Orion.app"

  zap trash: [
    "~/Library/Application Support/Orion",
    "~/Library/Preferences/com.kagi.orion.plist",
    "~/Library/Saved Application State/com.kagi.orion.savedState",
  ]
end

