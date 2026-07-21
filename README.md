
commands docker build -t rs-nginx .

docker run -d -p 8080:80 --name rs-nginx-container rs-nginx 
<!-- 8080 is local host port -->

docker exec -it rs-nginx-container /bin/sh

http://localhost:8080

docker logs rs-container

# Getting specific attr
 docker inspect rs-nginx-container --format '{{json .Mounts}}' | jq .
 docker inspect rs-nginx-container --format '{{json .ImageManifestDescriptor.platform.os}}' | jq .
docker inspect rs-nginx-container --format '{{json .ImageManifestDescriptor.platform}}' | jq .

