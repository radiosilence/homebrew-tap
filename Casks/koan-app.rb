cask "koan-app" do
  version "0.76.0"
  sha256 "6ad102125be96207e844b1140505685c82ef5cf0d462fc0ec3357c610105e861"

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
