#!/bin/sh

echo "RUN: node_server2/server.js"
node /var/www/html/node_server2/server.js &

echo "RUN: node_server2/server3.js"
node /var/www/html/node_server2/server3.js &

echo "RUN: node_server2/sss.js"
node /var/www/html/node_server2/sss.js &
