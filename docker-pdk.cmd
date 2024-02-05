@echo off
docker run --rm --pull=always -i -v %CD%:/src 070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest pdk %*
