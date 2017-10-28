#!/usr/bin/env bash
set -e # halt script on error

CONTAINER="vsftpd"

# stop running docker and remove volume & image
docker rm -vf $CONTAINER
docker rmi $CONTAINER
