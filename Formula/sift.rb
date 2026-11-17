class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.13.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.13.0/sift-macos-arm64.tar.gz"
    sha256 "bbf7de2aded5603207afec3b0fdb6841d7386bea168b07ad29c2653182726ecc"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.13.0/sift-linux-arm64.tar.gz"
      sha256 "60a7edfc13215dd6a2d0ff21dfffb10eab4d3ad36a7116952d0268b5c80c117f"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.13.0/sift-linux-x86_64.tar.gz"
      sha256 "56ce47629eaa942d9ac4f15de11af79d66601062c79f751d07ad79447f9d2ca8"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
