#!/bin/sh
sudo -i
cd /home/ubuntu
echo "$server_private_floatingIp  beeswarmserver" >> /etc/hosts
curl -v https://beeswarmserver:5000/login -k -L -d "username=admin&password=$(cat /etc/passbs)" -c cookie
curl -v https://beeswarmserver:5000/ws/drone/add -k -L -b cookie | grep '<pre><code>'| sed 's/<[^>]*>//g'>/home/ubuntu/file
beeswarm --config $(cat /home/ubuntu/file)
