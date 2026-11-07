cask "sbr" do
  version "0.3.0"
  sha256 "52afbe19bb7b46d733a42bffcdbfd83ecd74badb60a37f447f2fc8b4760ac292"

  url "https://github.com/radiosilence/sbr/releases/download/v#{version}/sbr-#{version}.dmg"
  name "sbr"
  desc "Proxy client compatible with sing-box configurations"
  homepage "https://sbr.blit.cc"

  depends_on macos: :sequoia

  app "sbr.app"

  zap trash: [
    "~/Library/Containers/cc.blit.sbr.mac",
    "~/Library/Group Containers/2256Q92VF2.cc.blit.sbr",
  ]
end
