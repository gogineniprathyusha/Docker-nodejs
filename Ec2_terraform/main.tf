terraform {
 required_providers {
     aws = {
         source = "hashicorp/aws"
         version = "~>4.0"
     }
 }
}

# Configure the AWS provider

provider "aws" {
  region     = "us-east-1"
}
resource "aws_vpc" "docker-VPC"{
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "docker-VPC"
    }

}

# Create Subnet

resource "aws_subnet" "docker-Subnet1" {
    vpc_id = aws_vpc.docker-VPC.id
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "docker-Subnet1"
    }
}