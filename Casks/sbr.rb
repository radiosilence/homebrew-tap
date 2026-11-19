cask "sbr" do
  version "0.4.0"
  sha256 "de59ef19329f3059b16f8e5a05f850f95b3907e2b7a1271090f66d4676651e51"

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
