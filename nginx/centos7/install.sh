curl -o /etc/yum.repos.d/nginx.repo -sL https://raw.githubusercontent.com/oslivan/shells/master/nginx/centos7/nginx.repo
sudo yum update
sudo yum install -y nginx
sudo nginx
