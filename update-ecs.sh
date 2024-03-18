#!/bin/bash

set -ex
STACK_NAME=ws2-ecs
S3_STACK_BUCKET=ws2-s3
./sync-s3.sh $S3_STACK_BUCKET

TEMPLATE_URL=https://$S3_STACK_BUCKET.s3.amazonaws.com/main.yml

aws cloudformation update-stack --stack-name $STACK_NAME \
  --template-url $TEMPLATE_URL \
  --capabilities CAPABILITY_IAM
