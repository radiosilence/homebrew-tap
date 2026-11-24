class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.74.1"
  license "MIT"
  url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
  sha256 "f54b7cadf21dedb50d1134922a9f5050b195bb4c8bd81c4ce25e45c25d91321b"
  depends_on arch: :arm64
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
