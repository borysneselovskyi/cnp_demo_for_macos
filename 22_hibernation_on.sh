#!/bin/bash
. ./config.sh
printf "${green}kubectl annotate cluster cluster-example --overwrite cnpg.io/hibernation=okubectl annotate cluster cluster-example --overwrite cnpg.io/hibernation=on${reset}\n"

kubectl annotate cluster cluster-example --overwrite cnpg.io/hibernation=on
