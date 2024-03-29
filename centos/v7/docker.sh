#!/usr/bin/env bash
sudo yum update -y
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum makecache fast
sudo yum install -y docker-ce
sudo systemctl enable docker
sudo systemctl start docker
# If don't need docker-compose, just comment follow command.
# version=`curl -s "https://api.github.com/repos/docker/compose/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'`
# echo "latest docker-compose version is $version"
# sudo curl -sSL "https://github.com/docker/compose/releases/download/$version/docker-compose-`uname -s`-`uname -m`" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
