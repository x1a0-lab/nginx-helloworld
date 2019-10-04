#!/usr/bin/env bash

REPO="477288082536.dkr.ecr.eu-west-1.amazonaws.com/nginx-hello-world"
tag="$(git rev-parse --short HEAD)"
docker build -t ${REPO}:${tag} .
docker push ${REPO}:${tag}
