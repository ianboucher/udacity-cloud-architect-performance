provider "aws" {
  shared_credentials_file = "/Users/ianboucher/.aws/credentials"
  profile = "default"
  region = var.aws_region
}