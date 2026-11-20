class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.14.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.14.0/sift-macos-arm64.tar.gz"
    sha256 "59d51a0fb8f6242b2c24533510a25e47139d93fbf9680bfa2653f38b5eba6af7"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.14.0/sift-linux-arm64.tar.gz"
      sha256 "5a7aacdb3c9cfdda39882498395a617fcb4c73317e49555e591eeacbb39e4389"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.14.0/sift-linux-x86_64.tar.gz"
      sha256 "21b495b922cb64a0d5a69c63b90c9656de7f00084b59e653d86c19db0c5659e8"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
