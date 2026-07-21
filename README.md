
commands docker build -t rs-nginx .

docker run -d -p 8080:80 --name rs-container rs-nginx 
<!-- 8080 is local host port -->

docker container exec -it rs-container /bin/sh

http://localhost:8080

docker logs rs-container

