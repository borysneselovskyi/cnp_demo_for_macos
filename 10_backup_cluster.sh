#!/bin/bash
clear
read -p "Displaying the backup.yaml file..."
echo ""
cat backup.yaml
echo ""
read -p "run Backup..."
echo -e "\nkubectl apply -f backup.yaml\n"
kubectl apply -f backup.yaml
echo ""
