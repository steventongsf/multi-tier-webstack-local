# adding repository and installing nginx		
apt update
apt install nginx -y
cat <<EOT > demoapp
upstream demoapp {
 server app01:8080;
}
server {
  listen 80;
  location / {
    proxy_pass http://demoapp;
  }
}

EOT

mv demoapp /etc/nginx/sites-available/demoapp
rm -rf /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/demoapp /etc/nginx/sites-enabled/demoapp

#starting nginx service and firewall
systemctl start nginx
systemctl enable nginx
systemctl restart nginx
