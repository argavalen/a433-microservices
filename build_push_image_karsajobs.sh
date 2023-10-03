#!/bin/bash
#build docker image dengan dockerfile di current directory
docker build -t karsajobs:latest .

#mengubah nama agar sesuai dengan format github packages
docker tag karsajobs:latest ghcr.io/argavalen/karsajobs:latest

#login ke github package
echo $PKG_TKN | docker login ghcr.io -u argavalen --password-stdin

#mengunggah image ke github package
docker push ghcr.io/argavalen/karsajobs:latest
