variable "aws_region" {
  default = "eu-west-1"
}

variable "ami" {
  default = "ami-0bb3fad3c0286ebd5"
}

variable "instance_count" {
  default = "2"
}

variable "instance_type" {
  type = map
  default = {
    "micro" = "t2.micro"
    "large" = "m4.large"
  }
}

variable "vpc_id" {
  default = "vpc-02e472b08ca6703bc"
}

variable "vpc_security_group_ids" {
  default = ["sg-0b832dfa10e1ad669"]
}

variable "subnet_ids" {
  type = map
  default = {
      "az-1a" = "subnet-0f7f33a72d8a2fff7"
      "az-1b" = "subnet-00d8ad29c892501fc" 
    }
}