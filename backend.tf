terraform {
  backend "remote" {
    organization = var.organization
    workspaces {
      name = var.workspace
    }
  }
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "4.22.0"
      }
    }
  required_version = ">= 0.14.0"
}

provider "aws" {
    region = "us-east-1"
}
