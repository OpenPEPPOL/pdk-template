$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
docker run --rm -i -d --name pdk-serve --pull=always -v ${ScriptDir}:/src -p8000:8000 070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest pdk serve
