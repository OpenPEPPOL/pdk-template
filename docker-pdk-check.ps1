$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
Write-Output $ScriptDir
docker run --rm -it -v --pull=always ${ScriptDir}:/src 070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest /bin/bash
