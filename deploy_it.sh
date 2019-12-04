#!/bin/bash

echo -e "Scheduling cadvisor on all nodes ...\n"

# kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f cadvisor.daemonset.yaml

echo -e "Creating poll ...\n"

# kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.deployment.yaml
# kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.service.yaml
# kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f poll.ingress.yaml

echo -e "\nCreating result ...\n"

kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f result.deployment.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f result.service.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f result.ingress.yaml


echo -e "\nCreating redis ...\n"

kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.configmap.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.deployment.yaml
kubectl --kubeconfig="dopclusterization2019-kubeconfig.yaml" apply -f redis.service.yaml
