#!/bin/bash

# Variables
IMAGE_NAME="akash3020/my-app"
TAG="latest"  # Change this to match your versioning strategy

echo "Building Docker image: $IMAGE_NAME:$TAG"

# Build Docker image
docker build -t $IMAGE_NAME:$TAG .

if [ $? -ne 0 ]; then
    echo "Docker build failed!"
    exit 1
fi

echo "Pushing image to Docker Hub..."
docker push $IMAGE_NAME:$TAG

if [ $? -ne 0 ]; then
    echo "Docker push failed!"
    exit 1
fi

echo "Build and push completed successfully!"

