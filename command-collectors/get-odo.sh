#!/bin/bash

mkdir /opt/odo
cd /opt/odo
curl -sSL -O https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/odo/latest/odo-linux-amd64.tar.gz
tar --no-same-owner -xf odo-linux-amd64.tar.gz
ln -s $PWD/odo /usr/local/bin/
chmod a+x $PWD/odo
rm odo-linux-amd64.tar.gz
