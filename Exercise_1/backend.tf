terraform {
    backend "s3" {
        bucket = "tfstate-udacity-iac"
        key = "terraform.tfstate" 
        region = "eu-west-1"
    }
}