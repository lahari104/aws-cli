# !/bin/bash

# Create Vpc
aws ec2 create-vpc \
     --cidr-block "192.168.0.0/16" \
     --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=Myvpc}]" \
     --region "us-east-1"

# Creating Subnets
aws ec2 create-subnet \
          --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet1}]" \
          --availability-zone "us-east-1a" \
          --cidr-block "192.168.0.0/24" \
          --vpc-id "vpc-0b78c86daebc0f937" \
          --region "us-east-1"

aws ec2 create-subnet \
          --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet2}]" \
          --availability-zone "us-east-1b" \
          --cidr-block "192.168.1.0/24" \
          --vpc-id "vpc-0b78c86daebc0f937" \
          --region "us-east-1"


aws ec2 create-subnet \
          --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet3}]" \
          --availability-zone "us-east-1c" \
          --cidr-block "192.168.2.0/24" \
          --vpc-id "vpc-0b78c86daebc0f937" \
          --region "us-east-1"                    

aws ec2 create-subnet \
          --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=subnet4}]" \
          --availability-zone "us-east-1d" \
          --cidr-block "192.168.3.0/24" \
          --vpc-id "vpc-0b78c86daebc0f937" \
          --region "us-east-1"         


aws ec2 create-internet-gateway \
        --tag-specifications "ResourceType=internet-gateway,Tags=[{Key=string,Value=Myigw}]" \
        --region "us-east-1"

aws ec2 attach-internet-gateway \
         --internet-gateway-id "igw-0a34d95444c55d218" \
         --vpc-id "vpc-0b78c86daebc0f937" \
         --region "us-east-1"

aws ec2 create-route-table \
        --vpc-id "vpc-0b78c86daebc0f937" \
        --tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=rt1}]" \
        --region "us-east-1"

aws ec2 create-route-table \
        --vpc-id "vpc-0b78c86daebc0f937" \
        --tag-specifications "ResourceType=route-table,Tags=[{Key=Name,Value=rt2}]" \
        --region "us-east-1"        

aws ec2 create-route \
        --destination-cidr-block "0.0.0.0/0" \
        --gateway-id "igw-0a34d95444c55d218" \
        --route-table-id "rtb-05bfb6db6e6d7a93b" \
        --region "us-east-1"

aws ec2 create-route \
        --destination-cidr-block "0.0.0.0/0" \
        --gateway-id "igw-0a34d95444c55d218" \
        --route-table-id "rtb-0057149a70721cb0c" \
        --region "us-east-1"    

aws ec2 associate-route-table \
         --route-table-id "rtb-05bfb6db6e6d7a93b" \
         --subnet-id "subnet-07a58c0a9447ac74a" \
         --region "us-east-1"

aws ec2 associate-route-table \
         --route-table-id "rtb-05bfb6db6e6d7a93b" \
         --subnet-id "subnet-060294de73b9826c9" \
         --region "us-east-1"         

aws ec2 associate-route-table \
         --route-table-id "rtb-0057149a70721cb0c" \
         --subnet-id "subnet-0096453b490d8a0c7" \
         --region "us-east-1"
                      
 aws ec2 associate-route-table \
         --route-table-id "rtb-0057149a70721cb0c" \
         --subnet-id "subnet-02010af77d4da255c" \
         --region "us-east-1"       
