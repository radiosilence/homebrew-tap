cask "sbr" do
  version "0.2.5"
  sha256 "5676aeae682960b62d43574da9577a3ff74cb587692669edd183f8ea972c925f"

  url "https://github.com/radiosilence/sbr/releases/download/v#{version}/sbr-#{version}.dmg"
  name "sbr"
  desc "Proxy client compatible with sing-box configurations"
  homepage "https://sbr.blit.cc"

  depends_on macos: ">= :sequoia"

  app "sbr.app"

  zap trash: [
    "~/Library/Containers/cc.blit.sbr.mac",
    "~/Library/Group Containers/2256Q92VF2.cc.blit.sbr",
  ]
end
