sudo curl -o /etc/yum.repos.d/nginx.repo -sL https://git.io/fjolh
sudo yum update
sudo yum install -y nginx
sudo systemctl enable nginx && sudo systemctl start nginx
