#!/bin/bash
#build docker image dengan dockerfile di current directory
docker build -t argavalen/karsajobs-ui:latest .

#mengubah nama image agar sesuai dengan format github packages
docker tag argavalen/karsajobs-ui:latest ghcr.io/argavalen/karsajobs-ui:latest

#login ke github package
echo $CR_PAT | docker login ghcr.io -u argavalen --password-stdin

#mengunggah image ke github packages
docker push ghcr.io/argavalen/karsajobs-ui:latest
