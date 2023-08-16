#!/bin/bash
sudo docker swarm init --advertise-addr=10.10.10.100
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker service create --name web-service --replicas 4 -p 80:80  httpd