cask "neckup" do
  version "0.2.1"
  sha256 "508aaf3614fd53ee58a37e6cc0d3024d8fe4d4857c018f4396176a1d9fdd9065"

  url "https://github.com/mikkley/neckup/releases/download/v#{version}/NeckUp-macOS.zip"
  name "NeckUp"
  desc "灵动岛颈椎守护：AirPods 传感器监测低头 + 番茄钟 + 休息段头控小游戏"
  homepage "https://github.com/mikkley/neckup"

  depends_on macos: ">= :sonoma"

  app "NeckUp.app"

  caveats <<~EOS
    NeckUp 当前为 ad-hoc 签名（未做 Apple 公证）。如首次打开提示「无法验证开发者」：
    右键 App 图标 → 打开；或终端执行：
      xattr -dr com.apple.quarantine /Applications/NeckUp.app
    也可以在安装时跳过隔离属性：brew install --cask --no-quarantine mikkley/neckup/neckup

    首次运行需授予「运动与健身」权限（系统设置 → 隐私与安全性 → 运动与健身），
    用于读取 AirPods 头部运动数据。
  EOS
end
