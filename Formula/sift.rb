class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.10.2"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.10.2/sift-macos-arm64.tar.gz"
    sha256 "5dbc9d07aefd53672b8ed46791b6e811f1366992b4b93cd43a59cdd0603895cb"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.10.2/sift-linux-arm64.tar.gz"
      sha256 "7cceee556eaea2626b1a19c229d219ba2091ec6980c86a691b98dfbefd3608f6"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.10.2/sift-linux-x86_64.tar.gz"
      sha256 "a424a95f6f3f0a1a4e68c6ac85ca9a9b40aaa8a1cbcc1cbebef2ace23cfab272"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
