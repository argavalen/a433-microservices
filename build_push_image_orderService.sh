#!/bin/bash
#build docker image dengan dockerfile di current directory
docker build -t order-service:latest .

#mengubah nama agar sesuai dengan format github packages
docker tag order-service:latest ghcr.io/argavalen/order-service:latest

#login ke github package
docker login ghcr.io -u argavalen

#mengunggah image ke github package
docker push ghcr.io/argavalen/order-service:latest
