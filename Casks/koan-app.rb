cask "koan-app" do
  version "0.71.1"
  sha256 "64bef253cdda16d65a53d2839a4d37b9b67f750c11ae5019b68a1d8201faadd4"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

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
