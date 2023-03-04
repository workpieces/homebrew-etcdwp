cask "etcdwp" do
    version "2.0.0"
    sha256 "fa701ec90774d6806da78c8c40e46a4b473170b10984bd7891ffb3bc93c43d91"
    url "https://github.com/workpieces/etcdwp/releases/download/v2.0.1-beta/etcdwp_v2.0.0.dmg",
        verified: "github.com/workpieces/etcdwp/"
    name "etcdwp"
    desc " etcdwp（这个 repo）相比，etcdwp 2 提供了更多令人愉快的功能，例如键值管理（是的，终于！），暗模式等等。除此之外，etcdwp 2从一开始就用原生技术重写，使其更现代、更漂亮、更快！"
    homepage "https://github.com/workpieces/etcdwp"
    app "etcdwp.app"
    zap trash: "~/.etcdwp"
  end

