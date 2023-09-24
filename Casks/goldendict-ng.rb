cask "goldendict-ng" do
  version "v23.09.10-WhiteDew.54c8bd56"
  sha256 "879b64bac876d33c3408699ea1b7ed0df6a6a6d425301a98a97d6934d5799e65"
  
  url "https://github.com/xiaoyifang/goldendict-ng/releases/download/#{version}/6.4.3-GoldenDict_macos-13_homebrew_20230910.dmg",
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