#!/bin/bash

set -x
STACK_NAME=web-lol
# S3_STACK_BUCKET=ws2-s3

# Sync template to s3
# ./sync-s3.sh $S3_STACK_BUCKET

# Create CF stack
aws cloudformation create-stack --stack-name $STACK_NAME \
    --template-body file://./ecs-services/task-web.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND
