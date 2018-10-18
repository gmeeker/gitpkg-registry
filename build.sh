#!/bin/sh

docker build -f ./Dockerfile -t queuebernetes-examples:latest -t us.gcr.io/ethereal-icon-182023/queuebernetes-examples:latest ../.. && \
docker push us.gcr.io/ethereal-icon-182023/queuebernetes-examples:latest && \
(kubectl delete deploy queuebernetes-controller;
 kubectl apply -f controller/resources/controller.yaml)
