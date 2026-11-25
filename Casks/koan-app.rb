cask "koan-app" do
  version "0.75.2"
  sha256 "25be5dad73777165ece7f4b4609900ac4050f2c9fae80a4f82af075b49b45a58"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  # The app replaces itself with each release, so `brew upgrade`
  # leaves it alone unless asked with --greedy.
  auto_updates true
  depends_on macos: :tahoe

  app "kōan.app"

  uninstall quit: "cc.blit.koan.desktop"

  # The desktop app's own state, caches and preferences only:
  # ~/.config/koan holds the library, config and keys the command
  # line, terminal UI and server share, and stays.
  zap trash: [
    "~/Library/Application Support/koan",
    "~/Library/Caches/koan",
    "~/Library/Preferences/cc.blit.koan.desktop.plist",
  ]
end
