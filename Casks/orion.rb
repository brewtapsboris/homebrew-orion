cask "orion" do
  version "1.0"
  sha256 :no_check

  # Using the direct CDN link to avoid redirect issues
  url "https://downloads.kagi.com/orion/Orion.dmg",
      verified: "downloads.kagi.com/orion/"
      
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
