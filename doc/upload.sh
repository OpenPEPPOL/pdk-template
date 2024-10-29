#!/bin/bash


asciidoctor -a asciidoctorconfigdir=$(pwd) main.adoc -o index.html


aws s3 cp index.html \
   s3://openpeppol-production-docs/pdk/index.html \
   --acl public-read

aws s3 cp img \
   s3://openpeppol-production-docs/pdk/img \
   --recursive \
   --acl public-read

rm -fr index.html
