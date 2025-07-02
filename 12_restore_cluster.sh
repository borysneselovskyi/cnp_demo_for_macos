#!/bin/bash
clear
read -p "Displaying the restore.yaml file..."
echo ""
cat restore.yaml
echo ""
read -p "run restore..."
echo -e "\nkubectl apply -f restore.yaml\n"
kubectl apply -f restore.yaml
echo ""
