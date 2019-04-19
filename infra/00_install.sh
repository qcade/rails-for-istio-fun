#!/bin/bash

cat rbac-config.yaml | kubectl apply -f -

helm init --upgrade --service-account tiller --history-max 20

helm install --name not-kong stable/nginx-ingress

helm upgrade --install --set grafana.adminPassword=$MY_PASS da-watcher stable/prometheus-operator

