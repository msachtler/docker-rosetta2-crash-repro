#!/bin/bash

i=0
while true; do
    echo "Iteration $i $(date)"
    rm -rf env && python3 -m venv env && env/bin/pip install -q -U pip wheel pip-tools && date
    contents="$(ls -l)"
    echo "Contents: $contents"
    if [ -z "$contents" ]; then
        exit
    fi

    i=$((i+1))
done
