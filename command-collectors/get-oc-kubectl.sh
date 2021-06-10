#!/bin/bash

mkdir /opt/openshift
cd /opt/openshift
curl -sSL -O https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/oc/latest/linux/oc.tar.gz
tar -xf oc.tar.gz
ln -s $PWD/oc /usr/local/bin/
ln -s $PWD/kubectl /usr/local/bin/
rm oc.tar.gz

