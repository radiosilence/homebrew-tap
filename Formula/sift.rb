class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.12.1"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.12.1/sift-macos-arm64.tar.gz"
    sha256 "888f40d95b3dc9631d27861f017dd48048fa5783beaa759cb1d46c1ba0e18b14"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.12.1/sift-linux-arm64.tar.gz"
      sha256 "a9696abb8978ce996447eac5dfca68e3b61a4f82e742d8119aac17e4a78b1cd3"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.12.1/sift-linux-x86_64.tar.gz"
      sha256 "a016a1df8c6bdc0b3731c4441bb5452192af6d6c55e603883597f761f318d703"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
