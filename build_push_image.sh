#!/bin/bash
#build docker image dengan dockerfile di current directory
docker build -t item-app:v1 .

#melihat daftar image
docker images

#mengubah nama image agar sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/argavalen/item-app:v1

#login ke github package
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

#mengunggaj image ke github packages
docker push ghcr.io/argavalen/item-app:v1