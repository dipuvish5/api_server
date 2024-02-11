#!/usr/bin/env bash
echo "Starting container==="
set -e
echo "Current location==="
pwd
ls
cd /home/ec2-user/Deployment
echo "Changed location==="
pwd
ls
# docker build -t nest_api_server .
docker run -d -it --name nest_api_server -p 5000:5000 nest_api_server