cask "etcdwp" do
  version "2.0.1"
  sha256 "ccdd3d412525d8b3fabe7b284304666b2df5567c89a9be369c26b53d50195184"

  url "https://github.com/workpieces/etcdwp/releases/download/v#{version}/etcdwp.dmg",
      verified: "github.com/workpieces/etcdwp/"
  name "etcdwp"
  desc "Etcd management application built on the modern with Golang Flutter and SwiftUI"
  homepage "https://workpieces.github.io/etcdwp/#/main"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "etcdwp.app"
end
