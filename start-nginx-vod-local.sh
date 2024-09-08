#!/bin/bash

path=$(basename $(pwd) | tr 'A-Z' 'a-z' )

docker run --name nginx-vod  -p 0.0.0.0:8082:8080 -v "$path/videos":/opt/static/videos "$path/nginx.conf":/usr/local/nginx/conf/nginx.conf -d nytimes/nginx-vod-module