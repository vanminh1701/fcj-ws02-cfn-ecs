#!/bin/bash

set -x


# Create CF stack
aws cloudformation create-stack \
    --stack-name ws2-vpc \
    --template-body file://./vpc.yml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=ws2-vpc
