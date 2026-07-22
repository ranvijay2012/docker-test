#!/bin/bash

#clear console
clear

#create docker image
docker build -t rs-nginx .

#stop and remove any existing container with the same name
docker stop rs-nginx-container || true
docker rm rs-nginx-container || true

#run image in a container
docker run -d -p 8080:80 --name rs-nginx-container rs-nginx

