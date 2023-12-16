provider "aws" {
  region = "us-east-1"
}

# Retrieve the list of availability zones in the region
data "aws_availability_zones" "available" {}
data "aws_region" "current" {}

# Define the VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = var.vpc_name
    Environment = "Development"
    Terraform   = true
  }
}