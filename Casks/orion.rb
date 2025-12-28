cask "orion" do
  version "1.0"
  sha256 :no_check

  url "https://browser.kagi.com/updates/macos/Orion.dmg",
      user_agent: :fake
      
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
