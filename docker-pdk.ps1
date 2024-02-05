$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
Write-Output $ScriptDir
docker run --rm --pull=always -i -v ${ScriptDir}:/src 070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest pdk $args
#docker run --rm -it -v ${ScriptDir}:/src public.ecr.aws/openpeppol/pdk:0.7.2 /bin/bash
