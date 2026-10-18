cask "t-duobar" do
  version "1.11.1"
  sha256 "c74e35b9df3705d5463ddbfada23d42c83d9f27eb41ce61001e3740cb81ade0e"

  url "https://github.com/squazaryu/T-DuoBar/releases/download/v#{version}/T-DuoBar-#{version}.dmg"
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
