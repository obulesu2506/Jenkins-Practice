terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "82s-dont-tf-remote-state"
    region = "us-east-1"
    key = "ecommerce project"
    //dynamodb_table = "dont-state-locking" // This is commenting for validating alternate method
    encrypt = true
    use_lockfile = true
  }
}
provider "aws" {
    region = "us-east-1"
}