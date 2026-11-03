#!/bin/bash
echo "node version - `node --version`"
echo "nginx version - `nginx -v`"
echo "python version - `/usr/bin/python3 --version`"
echo "Starting nginx..."
service nginx start -d
echo "Going to sleep infinity in order to keep this docker running..."
sleep infinity
