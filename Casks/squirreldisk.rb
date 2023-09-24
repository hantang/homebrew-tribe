cask "squirreldisk" do
  version "v0.3.4"
  sha256 "45820b944d22c6190db622c214800e81496ee8f8b148557015a44e6e0f245b49"
  
  url "https://github.com/adileo/squirreldisk/releases/download/${version}/SquirrelDisk_0.3.4_x64.dmg"
    verified: "https://github.com/adileo/squirreldisk"

  name "SquirrelDisk"
  desc "Beautiful, Cross-Platform and Super Fast Disk Usage Analysis Tool - Built With Rust 🦀 "
  homepage "https://squirreldisk.com/"
  
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "SquirrelDisk.app"
  
  zap trash: [
  ]
end