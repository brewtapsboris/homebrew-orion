cask "tr8600-setup" do
  version "4.2.0"
  sha256 "06e20f81b127ed975dae645caf6b68d232d94da3c575963036e8f6029777a6fa"  # Replace with the actual checksum for Driver 1

  url "https://gdlp01.c-wss.com/gds/4/0200006224/06/mac-tr8600-1_5-mcd.dmg"  # Replace with the actual URL for Driver 1
  name "Canon Printer Driver 1"
  desc "Printer driver for Canon printer model XYZ"
  homepage "https://www.usa.canon.com/support/p/pixma-tr8620"

  installer manual: "Setup.app"  # Adjust the filename if needed

  uninstall pkgutil: "com.canon.pkg.*"

  caveats <<~EOS
    This driver may require system permissions. Please check System Preferences > Security & Privacy to allow it.
  EOS
end
