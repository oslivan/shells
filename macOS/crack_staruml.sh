# 执行该脚本的条件
#  1. 安装了最新版 node/npm
#  2. 安装的 StarUML 版本是 3.1.0
# 执行完该脚本之后,必须重启 StarUML 才能使用
npm install asar -g
cd /Applications/StarUML.app/Contents/Resources
cp app.asar app.asar.bak && asar extract app.asar app
sed -i "" "s/setStatus(this, false)/setStatus(this, true)/g" app/src/engine/license-manager.js
sed -i "" "s/UnregisteredDialog.showDialog()//g" app/src/engine/license-manager.js
asar pack app app.asar
# 参考:
# 下载StarUML: http://staruml.io/download/releases/StarUML-3.1.1.dmg
# Node 下载: https://nodejs.org/dist/v12.16.1/node-v12.16.1-darwin-x64.tar.gz
# 破解方法源自: http://php-note.com/article/749.html
