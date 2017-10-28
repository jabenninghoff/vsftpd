#!/usr/bin/env bash
set -e # halt script on error

CONTAINER="vsftpd"
PORTS="21:21"

docker build -t $CONTAINER .
docker run --rm -d -p $PORTS --name $CONTAINER $CONTAINER
