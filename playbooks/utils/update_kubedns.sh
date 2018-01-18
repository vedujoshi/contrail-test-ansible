#!/bin/bash

sleep 5
kubectl patch deployment kube-dns --namespace=kube-system -p '{"spec": {"template": {"spec": {"affinity":null}}}}'
kubectl patch deployment kube-dns --namespace=kube-system -p '{"spec": {"template": {"spec": {"tolerations":null}}}}'


kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/livenessProbe", "value": {"exec": {"command": ["ping", "-c", "1", "127.0.0.1"]}}}]'
kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/1/livenessProbe", "value": {"exec": {"command": ["ping", "-c", "1", "127.0.0.1"]}}}]'
kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/2/livenessProbe", "value": {"exec": {"command": ["ls"]}}}]'

kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/0/readinessProbe", "value": {"exec": {"command": ["ping", "-c", "1", "127.0.0.1"]}}}]'
#kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/1/readinessProbe", "value": {"exec": {"command": ["ping", "-c", "1", "127.0.0.1"]}}}]'
#kubectl patch deployment kube-dns --namespace=kube-system --type='json' -p='[{"op": "replace", "path": "/spec/template/spec/containers/2/readinessProbe", "value": {"exec": {"command": ["ls"]}}}]'
