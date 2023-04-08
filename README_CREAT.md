homebrew push 安装自己的应用
1、 brew create --cask https://github.com/workpieces/etcdwp/releases/download/v2.0.0/etcdwp_v2.0.0.dmg 生成的文件使用vscode 修改

 cask "etcdwp" do
  version "2.0.0"
  sha256 "fa701ec90774d6806da78c8c40e46a4b473170b10984bd7891ffb3bc93c43d91"

  url "https://github.com/workpieces/etcdwp/releases/download/v#{version}/etcdwp_v#{version}.dmg",
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

2、验证 brew audit --new-cask etcdwp 验证格式 brew style --fix etcdwp !教程

export HOMEBREW_NO_AUTO_UPDATE=1 brew install my-new-cask brew uninstall my-new-cask
