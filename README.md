
commands docker build -t my-nginx-app .

docker run -d -p 8080:80 --name my-nginx-container my-nginx-app

docker container exec -it my-nginx-container /bin/sh

