#!/bin/bash

# Stop any running containers from the previous version
docker stop nest_api_server || true
docker rm nest_api_server || true