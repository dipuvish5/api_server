#!/usr/bin/env bash
set -e
echo "Stopping and removing the running container========"
docker rm -f nest_api_server:latest || true