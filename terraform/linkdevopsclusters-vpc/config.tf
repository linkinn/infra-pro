terraform {
  backend "s3" {
    bucket         = "${var.clusters_name_prefix}-vpc-terraform-state"
    key            = "${var.clusters_name_prefix}-vpc.tfstate"
    region         = "us-east-1"
    dynamodb_table = "${var.clusters_name_prefix}-vpc-terraform-state-lock-dynamodb"
  }
  required_version = "~> 0.14.5"
  required_providers {
    aws = "~> 3.27"
  }
}
provider "aws" {
  region  = var.aws_region
  version = "~> 3.27"
}