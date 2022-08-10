#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=oyegokeo/prediction_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment prediction_app --image=oyegokeo/prediction_app


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment/prediction_app type="Nodeport" --port 8080

