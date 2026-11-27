cask "koan-app" do
  version "0.77.1"
  sha256 "17c0e342a20fd7d48d8a6687bf1d60bdfc24538e114347dc680b7e1986416f9c"

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
