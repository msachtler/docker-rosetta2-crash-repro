#!/usr/bin/env bash

$(dirname $0)/destroy.sh
base="$(realpath $(dirname $0)/..)"

docker run \
    --platform=linux/amd64 \
    --volume="$base:/docker-repro/" \
    --name rosetta-repro \
    -t \
    -d \
    rosetta-repro
