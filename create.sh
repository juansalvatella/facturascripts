#!/bin/bash
docker run --name mysql -e MYSQL_ROOT_PASSWORD=threepwoods7 -d mysql --character-set-server=utf8 --collation-server=utf8_unicode_ci --default_authentication_plugin=mysql_native_password
docker run -d -p 8888:80 --link mysql:db -v /Users/joansalvatella/Applications/fs:/facturascripts-home --name my-facturascripts jsalvatella/facturascripts:latest
