#!/bin/sh

sudo docker stop nodejs

sudo docker rm nodejs

sudo docker build -t pjuvigny/node-test docker-nodejs

sudo docker run -p 49110:8000 -d --name nodejs --link db:db pjuvigny/node-test
