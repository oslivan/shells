#!/usr/bin/env bash
yum update
yum install -y epel-release
yum install -y mariadb-devel mariadb-server redis
systemctl enable mariadb
systemctl start mariadb
# redis 需要修改为 daemonize true, 然后执行 redis-server -f /etc/redis.conf
echo "==== 初始化MySQL密码，默认密码是空 =====\n"
echo -n 'Set new password: '
read -s new_pass
echo
mysqladmin -u root -p password $new_pass
