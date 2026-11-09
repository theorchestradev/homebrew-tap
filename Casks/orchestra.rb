cask "orchestra" do
  version "0.23.0"
  sha256 "247281feb5f871a6682024a4056e593023708fe95a51d3457a9c2be7a100b881"

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
