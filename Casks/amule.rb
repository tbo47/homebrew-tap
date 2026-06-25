cask "amule" do
  version "3.0.1"
  sha256 "8c80590e00f62ff0eac9d7e2c136c16af0abf158ab9eb50f35bd9fca2e851629"

  url "https://github.com/amule-org/amule/releases/download/#{version}/aMule-#{version}-macOS-universal2.dmg"
  name "aMule"
  desc "Free app for sharing and downloading files directly from other people online."
  homepage "https://amule-org.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "aMule.app"
end
