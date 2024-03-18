#!/bin/bash

set -x
STACK_NAME=ws2-ecs
S3_STACK_BUCKET=ws2-templates

Sync template to s3
./sync-s3.sh $S3_STACK_BUCKET

# Create CF stack
aws cloudformation create-stack --stack-name $STACK_NAME \
    --template-url https://$S3_STACK_BUCKET.s3.amazonaws.com/main.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND
