#!/bin/bash
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 168116352293.dkr.ecr.us-east-1.amazonaws.com
docker pull 168116352293.dkr.ecr.us-east-1.amazonaws.com/my-node-backend:latest