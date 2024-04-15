#!/bin/bash

set -ex


aws s3 sync . s3://tvm-cf-templates --exclude ".git/*" --profile minh
# aws s3 sync . s3://tvm-cf-templates-tokyo --exclude ".git/*" --profile minh

aws cloudformation update-stack --stack-name stack-set \
      --template-body file://stackset.yml \
      --profile minh \
      --capabilities CAPABILITY_NAMED_IAM 

