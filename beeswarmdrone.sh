#!/bin/sh
echo $server_private_floatingIp  beeswarmserver >> /etc/hosts
curl -v https://beeswarmserver:5000/login -k -L -d "username=admin&password=ryrzeabbtnpri" -c cookie
curl -v https://beeswarmserver:5000/ws/drone/add -k -L -b cookie | grep '<pre><code>'| sed 's/<[^>]*>//g'>file
beeswarm --config $(cat file)
