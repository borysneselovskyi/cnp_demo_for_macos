#!/bin/bash
clear

echo ""
read -p "Create the Postgres Cluster"
echo -e "\nkubectl apply -f cluster-example.yaml\n"

read -p "..."

kubectl apply -f cluster-example.yaml

echo ""
