data "aws_availability_zones" "available" {}

locals {
  name   = "eks-terraform"
#   region = "eu-east-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Name       = local.name
    GithubRepo = ""
  }
}