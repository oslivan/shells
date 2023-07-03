sudo yum -y install dnf
sudo dnf config-manager --add-repo=https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo dnf -y install dnf-plugin-releasever-adapter --repo alinux3-plus
sudo dnf -y install docker-ce --nobest
sudo dnf list docker-ce
sudo systemctl enable docker
sudo systemctl start docker
