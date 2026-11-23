cask "koan-app" do
  version "0.73.1"
  sha256 "41bee7919daeda8b5db1a546703db71be5ee83fa8ca4d7ca40c9385f528d0cfd"

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
