#!/usr/bin/env bash
yum update
yum install -y epel-release
yum install -y mariadb-devel mariadb-server
systemctl enable mariadb && systemctl start mariadb
echo "==== 初始化MySQL密码，默认密码是空 =====\n"
echo -n 'Set new password: '
read -s new_pass
echo
mysqladmin -u root -p password $new_pass
