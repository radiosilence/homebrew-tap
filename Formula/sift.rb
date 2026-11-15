class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.11.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.11.0/sift-macos-arm64.tar.gz"
    sha256 "74758fb3f48290b4c20bda1a53bebd91dec5b8a2e321c2545ba5759b1f2557a8"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.11.0/sift-linux-arm64.tar.gz"
      sha256 "298b37fd489d28b730cf73d445c19a9072bb17402befd090742aa37f8bc0d7cd"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.11.0/sift-linux-x86_64.tar.gz"
      sha256 "cd5084ac1f0a7f8a03b4e83a774f4e8d501197d73da2574e6f00315c1ff5ab39"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
