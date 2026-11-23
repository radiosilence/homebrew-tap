cask "sbr" do
  version "0.4.2"
  sha256 "93db2cb1539133f28ea9f8bb0fb048f022255ef2b671e50fd134454147b5e352"

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
