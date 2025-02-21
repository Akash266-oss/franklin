#!/bin/bash

# Variables
IMAGE_NAME="akash3020/my-app"
TAG="latest"  # Ensure this matches your build tag
CONTAINER_NAME="devops-build"

echo "Deploying Docker image to server: $SERVER_IP"

    echo "Pulling latest image..."
    docker pull $IMAGE_NAME:$TAG

    echo "Stopping existing container..."
    docker stop $CONTAINER_NAME || true
    docker rm $CONTAINER_NAME || true

    echo "Running new container..."
    docker run -d --name $CONTAINER_NAME -p 80:80 $IMAGE_NAME:$TAG

    echo "Deployment completed successfully!"
EOF

