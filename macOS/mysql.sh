#!/usr/bin/env bash
brew install mysql 
brew services start mysql
mysql_secure_installation
echo "==== 创建用户 ======\n"
