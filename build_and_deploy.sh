#!/bin/bash

docker build -t itnovate/rails-for-istio-fun:production . && \
docker push itnovate/rails-for-istio-fun:production && \
kubectl patch deployment za-app \
  -p '{"spec": {"template": {"metadata": {"creationTimestamp": "'$(date  '+%FT%TZ')'"}}}}'
