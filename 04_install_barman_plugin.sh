#!/bin/bash


clear
echo -e  "\nInstallation Cert-Manager...\n"
echo "
kubectl apply -f \
  https://github.com/cert-manager/cert-manager/releases/download/v1.16.2/cert-manager.yaml
"

read -p "..."

kubectl apply -f \
  https://github.com/cert-manager/cert-manager/releases/download/v1.16.2/cert-manager.yaml

i=10

while [ $i -gt 0 ]
do
   echo warte $i seconds
   i=`expr ${i} - 5`
   sleep 5
done

read -p "..."

echo -e  "\nInstallation Barman-Plugin...\n"
echo "
kubectl apply -f \
        https://github.com/cloudnative-pg/plugin-barman-cloud/releases/download/v0.5.0/manifest.yaml
"

read -p "..."

kubectl apply -f \
        https://github.com/cloudnative-pg/plugin-barman-cloud/releases/download/v0.5.0/manifest.yaml

read -p "..."

echo -e "\n Create the MinIO Secret \n"
echo "
kubectl create secret generic minio-creds \
  --from-literal=MINIO_ACCESS_KEY=admin \
  --from-literal=MINIO_SECRET_KEY=password
"
kubectl create secret generic minio-creds \
  --from-literal=MINIO_ACCESS_KEY=admin \
  --from-literal=MINIO_SECRET_KEY=password

read -p "..."
clear

echo -e "\n Create the Object Store Configuration \n"
export ip=`ifconfig en0 inet | awk '/inet6/ {next} /inet/ {print $2}'`
sed -e 's/#IP#/'${ip}'/' minio.template > minio.yaml

echo "Configuration:"
cat minio.yaml

read -p "..."
echo "
kubectl create apply -f minio.yaml
"

kubectl apply -f minio.yaml

echo ""
