#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag prediction_app .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -dp 8080:80 prediction_app --name prediction_app
