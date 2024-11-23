terraform {
  required_version = ">=1.9.8"
  backend "s3" {
    bucket = "terrafor-state-cegait" # alterar o bucket caso necessário
    key    = "portfolio/eks_terraform.tfstate"
    region = "us-east-1" # alterar conforme necessidade, região da key salva no S3
  }
}