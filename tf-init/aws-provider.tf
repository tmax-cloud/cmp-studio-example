module "aws-network-configs" {
  source = "./network-configs"
}

provider "aws" {
  region = "us-east-1"
}