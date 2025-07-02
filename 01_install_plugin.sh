#!/bin/bash
clear
echo -e  "\nInstallation of CNP Plugin...\n"
echo " 
curl -sSfL \
  https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh | \
  sh -s -- -b /usr/local/bin
"
read -p "..."

curl -sSfL \
  https://github.com/cloudnative-pg/cloudnative-pg/raw/main/hack/install-cnpg-plugin.sh | \
  sh -s -- -b /usr/local/bin

#cd /usr/local/bin
#/Users/borysneselovskyi/cnp/sergio/kubecon2022-demo/install-cnpg-plugin.sh

echo ""
