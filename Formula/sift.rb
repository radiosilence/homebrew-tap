class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.13.1"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.13.1/sift-macos-arm64.tar.gz"
    sha256 "6a5e2b952769905351cbb2dc6a8691494f48f86a990fbf4734b12bb9219e715b"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.13.1/sift-linux-arm64.tar.gz"
      sha256 "7fe3d711bf54904dfc6ae71deb5a5eece6d162d6114b3bed2af9928a644f8023"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.13.1/sift-linux-x86_64.tar.gz"
      sha256 "362c68ca60a812679b00203e210abba90f99d1f08b3f087b8bfc83e1b5ecf553"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
