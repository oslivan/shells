#!/usr/bin/env bash
sudo yum update
sudo yum install -y epel-release
sudo yum install -y mariadb-devel mariadb-server
sudo systemctl enable mariadb && sudo systemctl start mariadb
echo "==== 初始化MySQL密码，默认密码是空 =====\n"
echo -n 'Set new password: '
read -s new_pass
echo
mysqladmin -u root -p password $new_pass
