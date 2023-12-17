#!/bin/bash

# Build Docker image dari berkas Dockerfile
docker build -t ghcr.io/andreantudi/karsajobs-ui:latest .

# Login ke Docker Hub
echo $CR_PAT | docker login ghcr.io -u andreantudi --password-stdin

# Push image ke Docker Hub
docker push ghcr.io/andreantudi/karsajobs-ui:latest
