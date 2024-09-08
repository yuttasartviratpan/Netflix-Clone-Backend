#!/bin/bash

docker run -p 0.0.0.0:13306:3306 --name mariadb -e MARIADB_ROOT_PASSWORD=SalmonFishOil -e MYSQL_DATABASE=login_webapp -e MYSQL_USER=webapp -e MYSQL_PASSWORD=password -d --restart=always mariadb:10