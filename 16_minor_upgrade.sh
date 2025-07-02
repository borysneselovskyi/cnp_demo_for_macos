#!/bin/bash

clear
echo "diff -a --suppress-common-lines -y cluster-example.yaml cluster-example-minor-upgrade.yaml"
diff -a --suppress-common-lines -y cluster-example.yaml cluster-example-minor-upgrade.yaml

echo -e "\nUpgrading the Postgres Cluster...\n"
echo -e "kubectl apply -f cluster-example-minor-upgrade.yaml\n"

read -p "..."

kubectl apply -f cluster-example-minor-upgrade.yaml

echo ""
