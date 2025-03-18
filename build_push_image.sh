# build_push_image.sh
#!/bin/bash

# Nama image dan tag
IMAGE_NAME=item-app
IMAGE_TAG=v1
DOCKER_USER=prinserenn

# Build image dari Dockerfile
docker build -t $DOCKER_USER/$IMAGE_NAME:$IMAGE_TAG .

# Melihat daftar image di lokal
docker images

# Login ke Docker Hub
echo "Masukkan password Docker Hub:"
docker login -u $DOCKER_USER

# Push image ke Docker Hub
docker push $DOCKER_USER/$IMAGE_NAME:$IMAGE_TAG