#!/bin/bash

# Stop old container if exists
docker stop simpledeployapp || true
docker rm simpledeployapp || true

# Pull latest image from ECR
docker pull 390403865161.dkr.ecr.us-east-1.amazonaws.com/simpledeployapp:latest

# Run container
docker run -d --name simpledeployapp -p 80:80 390403865161.dkr.ecr.us-east-1.amazonaws.com/simpledeployapp:latest
