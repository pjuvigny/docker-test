#!/bin/sh

sudo docker stop nodejs

sudo docker rm nodejs

sudo docker build -t pjuvigny/node-test docker-nodejs

sudo docker run -p 49110:8000 -d --name nodejs --link db:db pjuvigny/node-test

sudo docker tag pjuvigny/node-test localhost:5000/node-test:$1
sudo docker tag -f pjuvigny/node-test localhost:5000/node-test:latest
sudo docker push localhost:5000/node-test
