@echo off
docker stop pdk-serve
docker run --rm --pull=always -i -d --name pdk-serve -v %CD%:/src -p8000:8000 070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest pdk serve
