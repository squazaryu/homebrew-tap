cask "t-duobar" do
  version "1.12.2,39"
  sha256 "8f3a2b018580f25f940f05fb91c84c3a78f61e993b904620fc67c7a1f6be73e6"

  url "https://github.com/squazaryu/T-DuoBar/releases/download/v#{version.before_comma}/T-DuoBar-#{version.before_comma}.dmg?build=#{version.after_comma}"
  name "T-DuoBar"
  desc "Menu bar battery, network and audio controls"
  homepage "https://github.com/squazaryu/T-DuoBar"

  livecheck do
    skip "This tap is updated after release assets are verified"
  end

  conflicts_with cask: "duobar"
  depends_on macos: :ventura

  app "DuoBar.app"

  uninstall quit: "com.mikeli.duobar"

  caveats <<~EOS
    Experimental community build with an ad-hoc signature; not Apple notarized.
    macOS may require individual approval in Privacy & Security.
    Quit DuoBar and back up a manually installed DuoBar.app before first installation.
    Updates preserve preferences; this cask does not remove shared DuoBar settings.
  EOS
end
