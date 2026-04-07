cask "mococompanion" do
  version "0.4.1"
  sha256 "20d8e9b68407b5170643d8d25911c332a3e701a7766f70a65aac8ca24888a4bc"

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
