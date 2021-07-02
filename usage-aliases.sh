#!/bin/bash

if [[ -z "${IMAGE_URI}" ]]; then
    REGISTRY="quay.io"
    NAMESPACE="tluh"
    IMAGE="os-clients"
    IMAGE_URI="$REGISTRY/$NAMESPACE/$IMAGE"
fi

tmpfile=$(mktemp /tmp/os-aliases.src.XXXXXX)
cat << EOF > $tmpfile
alias helm='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI helm'
alias oc='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI oc'
alias template2helm='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI template2helm'
alias odo='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI odo'
alias argocd='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI argocd'
alias kubectl='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI kubectl'
alias s2i='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI s2i'
alias operator-sdk='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI operator-sdk'
alias kn='podman run --rm -it -v ~/.kube:/root/.kube:z -v $PWD:/workdir:z $IMAGE_URI kn'
EOF

echo "now run 'source $tmpfile'"