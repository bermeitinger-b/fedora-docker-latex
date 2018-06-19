#!/bin/sh
IMAGE=bermeitingerb/fedora-latex:latest

exec docker run \
	--memory 1g \
	--memory-swap 1g \
	--rm \
	-i \
	--user="$(id -u):$(id -g)" \
	--net=none \
	-v "$PWD":/data \
	"$IMAGE" \
	"$@"
