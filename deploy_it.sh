#!/bin/bash

echo -e "Creating poll ...\n"

kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.deployment.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.service.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.ingress.yaml


echo -e "Creating redis ...\n"

kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.configmap.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.deployment.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.service.yaml
