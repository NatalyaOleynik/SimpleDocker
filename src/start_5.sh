#!/bin/bash

dockle seftonca:1.0
echo "Check that there are no errors or warnings when checking with dockle and enter any symbol to continue..."
read symbol
docker run -d -p 80:81 -v $(pwd)/nginx/nginx.conf:/etc/nginx/nginx.conf  --name part_5 seftonca:1.0
open http://localhost:80/
open http://localhost:80/status 
echo "Check that the page of the written mini server is available on localhost:80, check that localhost:80/status now returns a page with nginx status and enter any symbol to clean..."
read symbol
docker stop part_5
docker rm part_5
docker rmi -f seftonca:1.0