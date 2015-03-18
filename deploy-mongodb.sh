#!/bin/sh

sudo docker stop db

sudo docker rm db

sudo docker build -t pjuvigny/mongodb docker-mongodb

sudo docker run -p 127.0.0.1:27000:27017 -d --name db pjuvigny/mongodb
