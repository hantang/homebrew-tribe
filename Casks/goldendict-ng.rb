cask "goldendict-ng" do
  version "v23.12.07-HeavySnow.b0086d5c"
  sha256 ""
  version_qt: "6.6.1"
  version_mac: "13"
  version_date: "20231208"

  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/#{version}/#{version_qt}-GoldenDict_macos-#{version_mac}_homebrew_#{version_date}.dmg",
    verified: "https://github.com/xiaoyifang/goldendict-ng/"
  name "GoldenDict-ng"
  desc "The Next Generation GoldenDict. A feature-rich open-source dictionary lookup program, supporting multiple dictionary formats and online dictionaries."
  homepage "https://xiaoyifang.github.io/goldendict-ng/"
  
  livecheck do
    url :url # "https://github.com/xiaoyifang/goldendict-ng"
    strategy :github_latest
  end

  # depends_on macos: ">= :sierra"
  auto_updates true

  app "GoldenDict.app"
  # binary "#{appdir}/GoldenDict.app/Contents/MacOS/GoldenDict"
  
  zap trash: [
    "~/Library/Preferences/org.xiaoyifang.plist",
    "~/Library/Saved Application State/org.xiaoyifang.savedState",
    "~/.goldendict",
    "~/Library/Caches/GoldenDict-ng"
  ]
end