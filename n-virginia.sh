#!/bin/bash

# Create VPC
# aws ec2 create-vpc \
#     --cidr-block "10.10.0.0/16" \
#     --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=vpc-1},{Key=env,Value=dev}]" \
#     --region "us-east-1"

# Create Subnet-1
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-1},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1a" \
    --cidr-block "10.10.0.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

# Create Subnet-2
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-2},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1b" \
    --cidr-block "10.10.1.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

# Create Subnet-3
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-3},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1c" \
    --cidr-block "10.10.2.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

# Create Subnet-4
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-4},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1d" \
    --cidr-block "10.10.3.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

# Create Subnet-5
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-5},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1e" \
    --cidr-block "10.10.4.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

# Create Subnet-6
aws ec2 create-subnet \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=sub-6},{Key=env,Value=dev},{Key=purpose,Value=for-vpc1}]" \
    --availability-zone "us-east-1f" \
    --cidr-block "10.10.5.0/24" \
    --vpc-id "vpc-0b20d94e7f7d8e956" \
    --region "us-east-1"

