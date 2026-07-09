cask "qbittorrent" do
  version "5.2.3"
  sha256 "4dde4f357cf8d7271f7e25140d2986d076126566edf2d2ad441cdd382b2a333d"

  url "https://github.com/qbittorrent/qBittorrent/releases/download/release-#{version}/qbittorrent-#{version}_lt20.dmg"
  name "qBittorrent"
  desc "Free and reliable peer-to-peer BitTorrent client."
  homepage "https://www.qbittorrent.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  # The app name differs in the Finder and in a shell, so rename for consistency.
  app "qbittorrent.app", target: "qBittorrent.app"

  zap trash: [
    "~/.config/qBittorrent",
    "~/Library/Application Support/qBittorrent",
    "~/Library/Caches/qBittorrent",
    "~/Library/Preferences/org.qbittorrent.qBittorrent.plist",
    "~/Library/Preferences/qBittorrent",
    "~/Library/Saved Application State/org.qbittorrent.qBittorrent.savedState",
  ]
end
