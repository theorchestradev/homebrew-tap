cask "orchestra" do
  version "0.30.1"
  sha256 "6536dc1208441886cabfddaa639bbadc79fa7a6c64ae8b0ef608919cd478534e"

  url "https://github.com/theorchestradev/orchestra/releases/download/v#{version}/Orchestra-#{version}-macos-universal.dmg"
  name "Orchestra"
  desc "Run coding agents side by side in project-based terminal sessions"
  homepage "https://theorchestra.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Orchestra.app"

  # ~/.orchestra holds workspace state and session worktrees with possibly unmerged work,
  # so it is never removed.
  zap trash: [
    "~/Library/Caches/dev.theorchestra.Orchestra",
    "~/Library/HTTPStorages/dev.theorchestra.Orchestra",
    "~/Library/Preferences/dev.theorchestra.Orchestra.plist",
    "~/Library/Saved Application State/dev.theorchestra.Orchestra.savedState",
    "~/Library/WebKit/dev.theorchestra.Orchestra",
  ]
end
