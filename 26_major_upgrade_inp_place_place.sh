#!/bin/bash

. ./config.sh

clear
echo "diff -a --suppress-common-lines -y cluster-example-minor-upgrade.yaml cluster-example-major-upgrade-inplace.yaml"
diff -a --suppress-common-lines -y cluster-example-minor-upgrade.yaml cluster-example-major-upgrade-inplace.yaml

read -p "..."

printf "${green}kubectl apply -f cluster-example-major-upgrade-inplace.yaml${reset}\n"

kubectl apply -f cluster-example-major-upgrade-inplace.yaml
