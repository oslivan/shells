#!/usr/bin/env bash
# ideviceinstaller 主要用于给 iPhone 安装 ipa
# 参考：https://www.jianshu.com/p/92273e86ab2b

brew unlink libplist
brew install --HEAD libplist
# brew link --overwrite libplist
brew unlink usbmuxd
brew install --HEAD usbmuxd
# brew link --overwrite usbmuxd
brew install --HEAD libimobiledevice

# 前面都是为了安装最新版的依赖
brew install --HEAD ideviceinstaller

# 安装 ipa 的命令
# ideviceinstaller -i /path/your_package.ipa
