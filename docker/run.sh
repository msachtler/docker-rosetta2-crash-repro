#!/usr/bin/env bash

$(dirname $0)/destroy.sh

docker run \
    --platform=linux/amd64 \
    --volume=/Users/msachtler/dev/docker-repro:/docker-repro/ \
    --name rosetta-repro \
    -t \
    -d \
    rosetta-repro
