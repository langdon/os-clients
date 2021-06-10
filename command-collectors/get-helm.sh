#!/bin/bash

mkdir /opt/helm
cd /opt/helm
curl  -sSL -O https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/helm/latest/helm-linux-amd64.tar.gz
tar -xf helm-linux-amd64.tar.gz
ln -s $PWD/helm /usr/local/bin/
rm helm-linux-amd64.tar.gz
