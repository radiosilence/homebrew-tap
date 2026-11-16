class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.12.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.12.0/sift-macos-arm64.tar.gz"
    sha256 "76cee36c7f8338e47547923be33c218d24af2d778aaca88c89d49a1eddf33539"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.12.0/sift-linux-arm64.tar.gz"
      sha256 "fdd18b775933571a6d9b8af5e7fd4c009f77b928df4c7f288ea93b7a22fec6d8"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.12.0/sift-linux-x86_64.tar.gz"
      sha256 "dc34f1515ded72b61ad8731b53bba04c96ad6a7008aef132a04857e055a727e2"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
