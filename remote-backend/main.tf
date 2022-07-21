terraform {
    backend "remote" {
        organization = "tdog-direct"
        workspaces = {
            name = "the-tdog-direct-workspace-man"
        }
    }

    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~3.0"
      }
    }
}
provider "aws" {
    region = "us-east-1"
}
