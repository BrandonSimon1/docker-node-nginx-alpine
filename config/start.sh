#!/bin/sh

cd /repo
yarn
yarn build
cp -a build/. /usr/share/nginx/html/
cd ..
rm -rf /repo
nginx -g 'daemon off;'