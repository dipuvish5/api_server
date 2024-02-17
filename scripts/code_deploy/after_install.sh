#!/bin/bash

# Pull the latest version of the Docker image from Docker Hub
echo Logging in to Docker Hub...
docker login --username dipuvish5 --password deepakv123
docker pull dipuvish5/nest_api_server:latest