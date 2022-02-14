terraform {
  backend "s3" {
    bucket         = "linkdevopsclusters-terraform-state"
    key            = "linkdevopsclusters.tfstate"
    region         = "us-east-1"
    dynamodb_table = "linkdevopsclusters-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "~> 0.14.5"
}

data "aws_ssm_parameter" "workers_ami_id" {
  name            = "/aws/service/eks/optimized-ami/1.15/amazon-linux-2/recommended/image_id"
  with_decryption = false
}