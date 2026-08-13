cask "turtleup" do
  version "0.3.0"
  sha256 "a5807125beafbde3108ba43185d8b9333b33d0dee9516a65d5e494f61367df6b"

  url "https://github.com/mikkley/turtleup/releases/download/v#{version}/TurtleUp-macOS.zip"
  name "TurtleUp"
  desc "灵动岛颈椎守护：AirPods 传感器监测低头 + 番茄钟 + 休息段头控小游戏"
  homepage "https://github.com/mikkley/turtleup"

  depends_on macos: ">= :sonoma"

  app "TurtleUp.app"

  caveats <<~EOS
    TurtleUp 当前为 ad-hoc 签名（未做 Apple 公证）。如首次打开提示「无法验证开发者」：
    右键 App 图标 → 打开；或终端执行：
      xattr -dr com.apple.quarantine /Applications/TurtleUp.app
    也可以在安装时跳过隔离属性：brew install --cask --no-quarantine mikkley/turtleup/turtleup

    首次运行需授予「运动与健身」权限（系统设置 → 隐私与安全性 → 运动与健身），
    用于读取 AirPods 头部运动数据。
  EOS
end
