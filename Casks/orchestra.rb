cask "orchestra" do
  version "0.30.0"
  sha256 "a05c0d569ea35a4d89f18bc63ef97025ae73b2c1e71e03d2b7cf44b6e940de4c"

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
