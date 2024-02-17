#!/bin/bash

# Run the Docker container with appropriate configurations
docker run -d --name nest_api_server -p 3000:3000 nest_api_server:latest
# docker run -d -it --name nest_api_server -p 5000:5000 nest_api_server