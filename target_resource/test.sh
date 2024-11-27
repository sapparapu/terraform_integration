#!/bin/bash
resources=(
  "aws_s3_bucket.dev"
  "aws_instance.dev"
)

for resource in "${resources[@]}"; do
  targets+=" -target=$resource"
done

terraform apply $targets
