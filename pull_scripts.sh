#!/bin/bash
images=(
  kube-proxy-amd64:v1.11.2 
  kube-scheduler-amd64:v1.11.2 
  kube-controller-manager-amd64:v1.11.2 
  kube-apiserver-amd64:v1.11.2
  etcd-amd64:3.1.12 
  pause-amd64:3.1 
  kubernetes-dashboard-amd64:v1.8.3
  k8s-dns-sidecar-amd64:1.14.8 
  k8s-dns-kube-dns-amd64:1.14.8
  k8s-dns-dnsmasq-nanny-amd64:1.14.8
  coredns:1.1.3
)
for imageName in ${images[@]} ; do
  docker pull jilingjun1014/$imageName
  docker tag jilingjun1014/$imageName k8s.gcr.io/$imageName
  docker rmi jilingjun1014/$imageName
done
