cask "mococompanion" do
  version "0.4.0"
  sha256 "8f10403232a20ae30d02fb759dc56b24d04f64279eb13745fdd8e943a8cce34d"

  url "https://github.com/l4ci/MocoCompanion/releases/download/v#{version}/MocoCompanion-#{version}.zip"
  name "MocoCompanion"
  desc "Menubar companion for Moco time tracking"
  homepage "https://github.com/l4ci/MocoCompanion"

  depends_on macos: ">= :sequoia"

  app "MocoCompanion.app"

  zap trash: [
    "~/Library/Application Support/MocoCompanion",
    "~/Library/Preferences/com.mococompanion.app.plist",
  ]
end
