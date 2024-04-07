#!/bin/bash

nginx
gcc mini_server.c -o mini_server -lfcgi
spawn-fcgi -p 8080 mini_server
nginx -s reload
tail -f /dev/null