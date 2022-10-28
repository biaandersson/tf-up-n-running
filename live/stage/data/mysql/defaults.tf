terraform {
  required_version = "~> 1.0"

  required_providers {
    mysql = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}