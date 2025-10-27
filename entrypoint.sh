#!/bin/bash
echo "node version - `node --version`"
echo "nginx version - `nginx -v`"
echo "Starting nginx..."
service nginx start -d
echo "Going to sleep infinity in order to keep this docker running..."
sleep infinity
