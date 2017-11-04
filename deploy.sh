#!/bin/bash
docker stop emma  || true
docker rm `docker ps --no-trunc -aq`  || true

docker rmi -f emma-image
docker build -t emma-image /home/ec2-user/.
docker run -p 80:8080 --name=emma -d emma-image
