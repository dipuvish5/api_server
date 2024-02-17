#!/bin/bash

echo Logging in to Docker Hub...
docker login --username dipuvish5 --password deepakv123
echo Login successful in to Docker Hub...
docker pull dipuvish5/nest_api_server:latest
# Run the Docker container with appropriate configurations
docker run -d --name nest_api_server -p 3000:3000 nest_api_server:latest
# docker run -d -it --name nest_api_server -p 5000:5000 nest_api_server