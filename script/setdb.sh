#!/bin/bash

CONTAINER_NAME=mariadbdocker
BACKUPDIR=$(dirname $(pwd))/data

echo -e "\n>>>[STOP] 1-1. STOP Container '$CONTAINER_NAME' \n"
docker stop $CONTAINER_NAME

echo -e "\n>>>[REMOVE] 1-2. Remove Container '$CONTAINER_NAME' \n"
docker rm $CONTAINER_NAME

echo -e "\n>>>[BUILD] 2. Build Continaer '$CONTAINER_NAME'\n"
docker build -t $CONTAINER_NAME .

echo -e "\n>>>[RUN] 2. Run Container\n"
docker run \
	-d \
	-p 3306:3306 \
	--name $CONTAINER_NAME \
	-v $BACKUPDIR:/var/lib/mysql/ \
	$CONTAINER_NAME

echo -e "\n>>>[Inspect] 3. docker ps"
docker ps
echo ""
echo -e "check logs via 'docker logs $CONTAINER_NAME'"
echo -e "enter image via 'docker exec -it $CONTAINER_NAME /bin/bash'\n"

