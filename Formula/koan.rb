class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.75.2"
  license "MIT"
  url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
  sha256 "170c84f516da1c607d6f3c45f0600bb3d9e67bebb558987ca44a7c50947798eb"
  depends_on arch: :arm64
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
