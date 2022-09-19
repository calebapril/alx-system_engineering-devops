#!/usr/bin/env bash
# Install Nginx, redirect and 404

sudo apt update -y
sudo apt upgrade -y
sudo apt install nginx -y
sudo service nginx start
echo "Hello World!" | sudo tee /var/www/html/index.nginx-debian.html
new_string='server_name _;\n\n\trewrite \^\/redirect_me https:\/\/www.youtube.com\/watch\?v=QH2-TGUlwu4 permanent;/'
sudo sed -i "s/server_name _;\$/${new_string}" /etc/nginx/sites-available/default
sudo sed -i "s/^\t\}$/\t\}\n\n\terror_page 404 \/404.html;/" /etc/nginx/sites-available/default
sudo ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
echo "Ceci n'est pas une page" | sudo tee /var/www/html/404.html
sudo service nginx restart
