#!/bin/bash

# Build Docker image dari berkas Dockerfile
docker build -t ghcr.io/andreantudi/karsajobs:latest .

# Login ke Github Package
echo $CR_PAT | docker login ghcr.io -u andreantudi --password-stdin

# Push image ke Github Package
docker push ghcr.io/andreantudi/karsajobs:latest
