#!/usr/bin/bash
#change the ip addresses for servers, web-01 and web-02 as well as server names
#How to run: sudo ./ssh.sh

sudo apt-get install certbot
sudo service haproxy stop
sudo certbot certonly --standalone -d www.yourdomain.tech
sudo mkdir -p /etc/ssl/www.yourdomain.tech
sudo cat /etc/letsencrypt/live/www.yourdomain.tech/fullchain.pem /etc/letsencrypt/live/www.yourdomain.tech/privkey.pem | sudo tee /etc/ssl/www.yourdomain.tech/yourdomain.tech.pem
sed -i '$a\
frontend loadbalancer\
        mode http\
        bind *:80\
        bind *:443 ssl crt /etc/ssl/www.yourdomain.tech/yourdomain.tech.pem\
        http-request redirect scheme https code 301 unless { ssl_fc }\
        default_backend webservers\
        http-request set-header X-Forwarded-Proto https if { ssl_fc }\
        http-request set-header X-Forwarded-Proto http if !{ ssl_fc }\
        acl letsencrypt-acl path_beg /.well-known/acme-challenge/\
        use_backend letsencrypt-backend if letsencrypt-acl\
        default_backend webservers\
backend webservers\
        balance roundrobin\
        redirect scheme https if !{ ssl_fc }\
        server 7094-web-01 10.26.246.254:80 check\
        server 7094-web-02 5.165.219.197:80 check\
backend letsencrypt-backend\
        server letsencrypt 127.0.0.1:54321\
	' /etc/haproxy/haproxy.cfg
