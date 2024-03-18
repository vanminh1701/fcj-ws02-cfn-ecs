#!/bin/bash

set -x
S3_STACK_BUCKET=$1

aws s3 sync . s3://$S3_STACK_BUCKET/ --exclude ".git/*"

