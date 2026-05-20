cask "mococompanion" do
  version "0.6.1"
  sha256 "e8573bcacde6e4c0cccd51ceb89342c7dbe0f4ba9d21fca02589b76629ef450e"

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
