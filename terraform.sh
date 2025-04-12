#!/bin/bash

for dir in 01-vpc 02-sg 03-bastion 04-database 05-apps; do
  echo "Applying Terraform in $dir..."
  (
    cd "$dir" && terraform apply -auto-approve
  )
done
