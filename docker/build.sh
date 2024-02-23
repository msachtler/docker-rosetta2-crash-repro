#!/usr/bin/env bash

dockerfile_loc=$(dirname $0)
docker buildx build $dockerfile_loc \
	--platform=linux/amd64 \
        --pull \
	-t rosetta-repro
