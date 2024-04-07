#!/bin/bash

docker pull nginx
docker run -d -p 81:81 --name part_3 nginx
docker cp mini_server.c part_3:/
docker cp nginx/nginx.conf part_3:/etc/nginx/
docker exec part_3 apt-get update
docker exec part_3 apt-get install -y gcc spawn-fcgi libfcgi-dev
docker exec part_3 gcc mini_server.c -o mini_server -lfcgi
docker exec part_3 spawn-fcgi -p 8080 mini_server
docker exec part_3 nginx -s reload
open http://localhost:81/
echo "Check that browser on localhost:81 returns the page you wrote and enter any symbol to clean..."
read symbol
docker stop part_3
docker rmi -f nginx
docker rm part_3