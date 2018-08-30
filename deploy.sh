#!/bin/sh -x
kubectl delete -f daemonset.yml --now
kubectl delete cm ansible

sleep 2

kubectl create configmap ansible --from-file=site.yml --from-file=ansible.cfg --from-file=hosts
kubectl create -f daemonset.yml
