#!/usr/bin/env bash
set -xe

sudo docker pull ghcr.io/richardsnider/go-wasm:latest

docker run \
--publish 8080:80 \
--detach \
--tty \
--interactive \
--rm \
ghcr.io/richardsnider/go-wasm:latest

curl localhost:8080
