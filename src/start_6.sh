#!/bin/bash

docker ps
echo "Check that all running containers are stopped and enter any symbol to continue..."
read symbol
docker-compose build
docker-compose up -d
open http://localhost:80/
echo "Check that the browser returns the page you wrote on localhost:80 as before and enter any symbol to clean..."
read symbol
docker-compose down
docker rmi -f src-mini_server nginx