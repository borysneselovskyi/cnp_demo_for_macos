#!/bin/bash

. ./config.sh

echo "Configuration:" 

cat cluster-example-major-upgrade-outofplace.yaml

read -p "..."

printf "${green}kubectl apply -f cluster-example-major-upgrade-outofplace.yaml${reset}\n"

kubectl apply -f cluster-example-major-upgrade-outofplace.yaml
