#!/bin/bash

set -x
STACK_NAME=ws2-ecs
S3_STACK_BUCKET=tvm-cf-templates

aws s3 sync . s3://$S3_STACK_BUCKET --exclude ".git/*" --profile minh

# Create CF stack
aws cloudformation create-stack --stack-name $STACK_NAME \
    --template-url https://$S3_STACK_BUCKET.s3.amazonaws.com/main.yml \
    --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
    --profile minh
