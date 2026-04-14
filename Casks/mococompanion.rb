cask "mococompanion" do
  version "0.5.1"
  sha256 "9c02485103b2be8e4e810f8a65cb13f63649ffcc74b36c5b505f4f7dee9cea96"

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
