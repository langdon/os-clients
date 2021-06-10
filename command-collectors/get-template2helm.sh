#!/bin/bash

mkdir /opt/template2helm
cd /opt/template2helm
curl -sSL -O https://github.com/redhat-cop/template2helm/releases/download/v0.1.0/linux-amd64-template2helm.bz2
bunzip2 linux-amd64-template2helm.bz2
ln -s $PWD/template2helm /usr/local/bin/
chmod a+x linux-amd64-template2helm
