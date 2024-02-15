#!/usr/bin/env sh

MYSQL_ROOT_PASSWORD=rut
MYSQL_DATABASE=myExampleDB

docker container exec -it mysql1 mysql --password=${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} -e "
SELECT * FROM Persons\G
" > mysql1_data.txt
docker container exec -it mysql2 mysql --password=${MYSQL_ROOT_PASSWORD} ${MYSQL_DATABASE} -e "
SELECT * FROM Persons\G
" > mysql2_data.txt

vimdiff mysql1_data.txt mysql2_data.txt 
rm mysql1_data.txt mysql2_data.txt
