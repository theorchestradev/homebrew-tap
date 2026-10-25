cask "orchestra" do
  version "0.11.0"
  sha256 "c18728a4b151669e5b8f44d250b95f2f43aa8968274527a471b82ac99f4de0df"

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
