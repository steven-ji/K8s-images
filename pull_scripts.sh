#!/bin/bash
images=(
  kube-proxy:v1.13.4 
  kube-scheduler:v1.13.4 
  kube-controller-manager:v1.13.4 
  kube-apiserver:v1.13.4
  etcd:3.2.24
  pause:3.1 
#  kubernetes-dashboard-amd64:v1.8.3
#  k8s-dns-sidecar-amd64:1.14.8 
#  k8s-dns-kube-dns-amd64:1.14.8
#  k8s-dns-dnsmasq-nanny-amd64:1.14.8
  coredns:1.2.6
#  metrics-server-amd64:v0.2.1
)
for imageName in ${images[@]} ; do
  docker pull jilingjun1014/$imageName
  docker tag jilingjun1014/$imageName k8s.gcr.io/$imageName
  docker rmi jilingjun1014/$imageName
done
