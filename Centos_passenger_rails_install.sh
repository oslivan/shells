#!/usr/bin/env bash
# 参考：https://www.phusionpassenger.com/library/install/nginx/install/oss/el7/
yum install -y epel-release yum-utils
yum-config-manager --enable epel
yum clean all && sudo yum update -y
yum install -y ntp
chkconfig ntpd on
ntpdate pool.ntp.org
service ntpd start
yum install -y pygpgme curl
curl --fail -sSLo /etc/yum.repos.d/passenger.repo https://oss-binaries.phusionpassenger.com/yum/definitions/el-passenger.repo
yum install -y nginx passenger || sudo yum-config-manager --enable cr && sudo yum install -y nginx passenger
yum install -y nodejs vim git
# 配置 /etc/nginx/conf.d/passenger.conf 文件
# passenger-config --root
service nginx restart && passenger-memory-stats
