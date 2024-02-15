#!/usr/bin/env sh

MYSQL_ROOT_PASSWORD=rut

echo "mysql1"
docker container exec -it mysql1 mysql -prut -e "show slave status\G" > mysql1_slave_status.txt

echo "mysql2"
docker container exec -it mysql2 mysql -prut -e "show slave status\G" > mysql2_slave_status.txt

vimdiff mysql1_slave_status.txt mysql2_slave_status.txt
rm mysql1_slave_status.txt mysql2_slave_status.txt
