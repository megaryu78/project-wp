#/bin/sh
CURRENT_DIR=`pwd`
BASE=`basename $CURRENT_DIR`
PROJECT=`echo ${BASE/\-/}`

docker-compose stop
docker rm ${PROJECT}_mariadb_1
docker rm ${PROJECT}_wp_1
docker rm ${PROJECT}_wpcli_1
docker network rm ${PROJECT}_front
docker network rm ${PROJECT}_back
rm -Rf ./data/*
