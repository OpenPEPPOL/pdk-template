docker run --rm -i -d --pull=always \
  --name pdk-serve -v "$(pwd)":/src \
  -p8000:8000 \
  070318080841.dkr.ecr.eu-west-1.amazonaws.com/pdk:latest \
  pdk serve
