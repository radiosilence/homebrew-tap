cask "browser-schedule" do
  version "1.3.3"
  sha256 "50d935290bedea731e6797834b91c26ab59f2ea05ab039f62987e339a4192997"

  url "https://github.com/radiosilence/browser-schedule/releases/download/v#{version}/BrowserSchedule.dmg"
  name "BrowserSchedule"
  desc "Automatic browser switching based on time, day, and URL patterns"
  homepage "https://github.com/radiosilence/browser-schedule"

  depends_on macos: :sonoma

  app "BrowserSchedule.app"

  zap trash: "~/.config/browser-schedule"
end
