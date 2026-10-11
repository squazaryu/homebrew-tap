# squazaryu Homebrew tap

Install [T-DuoBar](https://github.com/squazaryu/T-DuoBar):

```sh
brew install --cask squazaryu/tap/t-duobar
```

Update:

```sh
brew update
brew upgrade --cask squazaryu/tap/t-duobar
```

T-DuoBar's weekly checker reads `updates/t-duobar.json`. The cask and this manifest are published together after the corresponding DMG is uploaded and verified.

The current build is experimental, ad-hoc signed, and not Apple notarized. Homebrew verifies SHA-256 but does not provide Developer ID or notarization.

The app is installed as `/Applications/DuoBar.app`, with the original bundle identifier. Quit and back up a manually installed copy before the first install. Do not use `--force` to discard it. Existing preferences are preserved. The fork and original should not run simultaneously.
