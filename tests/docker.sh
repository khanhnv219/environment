#!/bin/bash

echo "#######################"
echo "#### Docker Images ####"
echo "#######################"

docker images

echo "###########################"
echo "#### Docker Containers ####"
echo "###########################"

docker ps

echo "######################"
echo "#### Docker Ports ####"
echo "######################"

docker port docker_php7_1 9000
docker port docker_mariadb_1 3306
docker port docker_nginx_1 80
docker port docker_elastic_1 9200
docker port docker_rabbitmq_1 15672
docker port docker_redis_1 6379