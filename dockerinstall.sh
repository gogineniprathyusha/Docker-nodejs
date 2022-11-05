#!/bin/bash
sudo su --
amazon-linux-extras install docker
service docker start
usermod -a -G docker ec2-user
chkconfig docker on
yum install -y git
curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/gogineniprathyusha/Docker-nodejs.git
cd /Docker-nodejs/
docker build -t node .
docker run -t -d -p 3030:3030 node