#!/bin/bash

set -e

docker build --target kmstool-enclave-new-cli -t kmstool-enclave-new-cli -f ../../containers/Dockerfile.al2 ../..
CONTAINER_ID=$(docker create kmstool_enclave_new_cli)
docker cp $CONTAINER_ID:/kmstool_enclave_new_cli ./
docker cp $CONTAINER_ID:/usr/lib64/libnsm.so ./
docker rm $CONTAINER_ID
