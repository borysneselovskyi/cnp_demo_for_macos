#!/bin/bash
clear
echo -e  "\nCheck the Installation of the Barman Plugin...\n"
echo "
kubectl rollout status deployment \
  -n cnpg-system barman-cloud
"
#read -p "..."

kubectl rollout status deployment \
  -n cnpg-system barman-cloud

echo ""
