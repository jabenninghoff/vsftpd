#!/usr/bin/env bash

# variables used for test scripts

# container name to use
CONTAINER="vsftpd"
# ports to open on the container
PORTS="21:21"
# length of time to wait for docker container to start
WAIT="0"
# egrep filter to use to find running processes
FILTER="vsftpd"
# number of processes expected
PSCOUNT="1"
