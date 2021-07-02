#!/bin/bash
cd /workdir

case $1 in

  help)
    if [ $1 != "help" ]; then
      echo "\"$1\" is not a supported command."
    fi
    echo "Available commands are: oc, helm, template2helm, odo, kubectl, argocd, s2i, operator-sdk, kn, func"
    ;;

  *)
    exec $1 "${@:2}"
    ;;

esac

