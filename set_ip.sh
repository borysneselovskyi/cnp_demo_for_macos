export ip=`ifconfig en0 inet | awk '/inet6/ {next} /inet/ {print $2}'`
sed -e 's/#IP#/'${ip}'/' monio.template > minio.yaml
