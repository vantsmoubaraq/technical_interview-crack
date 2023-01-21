#!/usr/bin/bash
#sets up your web servers for the deployment of web_static

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install nginx
mkdir -p /data/web_static/releases/test/ /data/web_static/shared/
echo "<html>
  <head>
  </head>
  <body>
    Holberton School
  </body>
</html>" > /data/web_static/releases/test/index.html
sudo ln -sf /data/web_static/releases/test/ /data/web_static/current
sudo chown -hR ubuntu:ubuntu /data/
sed -i "/server_name _;/a\tlocation /hbnb_static/ {\n\talias /data/web_static/current/;\t\n}" /etc/nginx/site-available/default
