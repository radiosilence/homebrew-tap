class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.75.0"
  license "MIT"
  url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
  sha256 "191d5d11b9b5295e151c065a25b715422141121a74f6c6f39aee14dafdef21f8"
  depends_on arch: :arm64
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
