#!/bin/bash

# Get the ECR registry URI dynamically
ECR_REGISTRY_URI=$(aws sts get-caller-identity --query "Account" --output text).dkr.ecr.${AWS_REGION}.amazonaws.com

echo "ECR_REGISTRY_URI=${ECR_REGISTRY_URI}" >> $GITHUB_ENV
