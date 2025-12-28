cask "orion" do
  version "1.0" # Updated to the new stable version
  sha256 :no_check # This allows it to always pull the latest without a hash mismatch

  url "https://browser.kagi.com/updates/macos/Orion.dmg"
  name "Orion Browser"
  desc "WebKit based, ad-free browser"
  homepage "https://browser.kagi.com/"

  app "Orion.app"

  uninstall quit: "com.kagi.kagimacOS"

  zap trash: [
    "~/Library/Application Support/Orion",
    "~/Library/Caches/com.kagi.kagimacOS",
    "~/Library/Preferences/com.kagi.kagimacOS.plist",
  ]
end
