cask "orchestra" do
  version "0.25.0"
  sha256 "2bc348381336c83b81b17ec595700b675df6df329a2571fbf4cad67e5c08ecc6"

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
