#/bin/sh
docker-compose stop
docker rm projectwp_mariadb_1
docker rm projectwp_wp_1
docker rm projectwp_wpcli_1
docker network rm projectwp_front
docker network rm projectwp_back
rm -Rf ../../volumes/mariadb/data/*
