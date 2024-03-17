#!/bin/bash

set -x
S3_STACK_BUCKET=$1

aws s3 sync stacks s3://$S3_STACK_BUCKET/stacks
aws s3 sync ecs-services s3://$S3_STACK_BUCKET/ecs-services
aws s3 cp main.yml s3://$S3_STACK_BUCKET/main.yml

