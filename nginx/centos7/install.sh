sudo curl -o /etc/yum.repos.d/nginx.repo -sL https://git.io/fjolh
sudo yum update -y
sudo yum install -y nginx
sudo systemctl enable nginx && sudo systemctl start nginx
