#!/bin/bash

set -e
set -x

entry_point="/leveros/${1}"
docker run --rm --entrypoint "${entry_point}" \
    -v "${PWD}/${1}:${entry_point}" \
    ${EXTRA_DOCKER_ARGS} \
    --net leveros_default \
    leveros/ubuntubase:latest \
    "${@:2}"