#!/usr/bin/env bash

docker run --name twitter-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql

docker run -it --link twitter-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"$MYSQL_ENV_MYSQL_ROOT_PASSWORD"'