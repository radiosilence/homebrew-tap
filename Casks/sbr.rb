cask "sbr" do
  version "0.3.1"
  sha256 "0e0eb88b525042a433fa917d3539a5af8890285c0b39f5bbfe7199c84727e276"

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
