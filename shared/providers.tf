terraform {
  required_version = ">=1.9.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.75.0"
    }
  }
}

provider "aws" {
  region  = var.regiao_provider
  profile = "default" # alterar conforme necessidade
}

variable "regiao_provider" {
  type    = string
  default = "us-east-1"
}