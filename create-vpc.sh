#!/bin/bash
set -x

# Create CF stack
aws cloudformation create-stack \
    --stack-name ws02-vpc \
    --template-body file://./vpc.yml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=ws02-vpc \
    --profile minh
