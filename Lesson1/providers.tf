terraform {
  backend "s3" {
    bucket         = "zasymovych-aws-terraform-state-backend"
    key            = "backend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "zasymovych-aws-terraform-state-locks"
    encrypt        = true
  }
  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 5.21.0"

    }

  }
  required_version = ">=1.6.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
  default_tags {
    tags = {
      "TerminationDate" = "Permanent",
      "Environment"     = "Development",
      "Team"            = "DevOps",
      "DeployedBy"      = "Terraform",
      "Description"     = "For General Purposes"
      "OwnerEmail"      = "devops@example.com"
      "Type"            = "Compute Cloud"
    }
  }
}


