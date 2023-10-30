#!/bin/bash
#build docker image dengan dockerfile di current directory
docker build -t shipping-service:latest .

#mengubah nama agar sesuai dengan format github packages
docker tag shipping-service:latest ghcr.io/argavalen/shipping-service:latest

#login ke github package
docker login ghcr.io -u argavalen

#mengunggah image ke github package
docker push ghcr.io/argavalen/shipping-service:latest
