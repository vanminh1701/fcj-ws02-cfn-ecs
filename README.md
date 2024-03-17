# CloudFormation - ECS - Pipeline

Create vpc stack

```bash
aws cloudformation create-stack \
    --stack-name ws2-vpc \
    --template-body file://./vpc.yml \
    --parameters ParameterKey=EnvironmentName,ParameterValue=ws2-vpc
```

Create s3 bucket to save cloudformation artifact

```bash
aws s3api create-bucket --bucket ws2-s3
```

Connect ECS container

```bash
aws ecs execute-command \
      --cluster CLUSTER_NAME \
      --task TASK_ARN \
      --command "/bin/bash" \
      --interactive
```
