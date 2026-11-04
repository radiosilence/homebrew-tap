class TubeleSolver < Formula
  desc "Solve Tubele, the London station guessing game, by elimination"
  homepage "https://github.com/radiosilence/tubele-solver"
  version "0.1.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/tubele-solver/releases/download/v0.1.0/tubele-solver-macos-arm64.tar.gz"
    sha256 "3b837447007d897847e0c510be45b416fd42ef6ab0e414b6ff9344ca96b90f2a"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/tubele-solver/releases/download/v0.1.0/tubele-solver-linux-arm64.tar.gz"
      sha256 "04d99ce464693786565ab160a2575a63a3e4e4375755e2b1d1c19f2eb1cb5aa3"
    end
    on_intel do
      url "https://github.com/radiosilence/tubele-solver/releases/download/v0.1.0/tubele-solver-linux-x86_64.tar.gz"
      sha256 "3384c9aa85cb83e95769b19c6e36849ee05259af3ac727af2e7721234a7c5e64"
    end
  end
  def install
    bin.install "tubele-solver"
    generate_completions_from_executable(bin/"tubele-solver", "--completions")
  end
  def caveats
    "Playing the live game needs a Chromium-based browser (Chrome, Brave, Edge, Helium); set TUBELE_BROWSER to use another."
  end
  test do
    assert_match "tubele-solver", shell_output("#{bin}/tubele-solver --version")
  end
end
