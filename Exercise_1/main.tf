# TASK: Designate a cloud provider, region, and credentials
provider "aws" {
  shared_credentials_file = "/Users/ianboucher/.aws/credentials"
  profile = "default"
  region = "eu-west-1"
}

# TASK: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami = var.ami
  instance_type = var.instance_type["micro"]
  count = 4

  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_ids["az-1a"]

  tags = {
    Name = "Udacity-T2-${count.index + 1}"
  }
}

# TASK: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami = var.ami
  instance_type = var.instance_type["large"]
  count = 2

  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id = var.subnet_ids["az-1a"]

  tags = {
    Name = "Udacity-M4-${count.index + 1}"
  }
}

# TASK: Use Terraform to delete the 2 m4.large instances
# terraform destroy -target=aws_instance.Udacity-M4