terraform {
  backend "remote" {
    organization = "example-org-23853c"
    workspaces {
      name = "dev"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.22.0"
    }
  }
  required_version = ">= 0.14.0"
}

provider "aws" {
  region = "us-east-1"
}
