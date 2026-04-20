terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "devopsdock-terraform-backend-bucket"
    key    = "s3-backend"
    region = "ap-south-1"
  }
}
