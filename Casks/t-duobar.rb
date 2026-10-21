cask "t-duobar" do
  version "1.12.0,37"
  sha256 "1cda17691dd3e3f5722f88342d60a209d69583d480f43019d3b585170b1c0746"

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
