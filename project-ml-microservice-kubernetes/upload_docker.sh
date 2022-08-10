#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=oyegokeo/prediction_app

# Step 2:  
# Authenticate & tag
docker tag prediction_app oyegokeo/prediction_app
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push oyegokeo/prediction_app
