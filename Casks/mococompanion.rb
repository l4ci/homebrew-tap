cask "mococompanion" do
  version "0.8.0"
  sha256 "75058d6e2e771c88f3478a1c66e6be3d5a5cc8c9b4ca0dfb9fb94a1921e6eaa3"

  url "https://github.com/l4ci/MocoCompanion/releases/download/v#{version}/MocoCompanion-#{version}.zip"
  name "MocoCompanion"
  desc "Menubar companion for Moco time tracking"
  homepage "https://github.com/l4ci/MocoCompanion"

  depends_on macos: :tahoe

  app "MocoCompanion.app"

  zap trash: [
    "~/Library/Application Support/MocoCompanion",
    "~/Library/Preferences/com.mococompanion.app.plist",
  ]
end
