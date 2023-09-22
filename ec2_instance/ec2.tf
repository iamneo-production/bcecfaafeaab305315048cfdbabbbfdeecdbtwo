terraform {
  required_providers {
    awws = {
        source = "hashicorp/aws"
    }
  }
  
}
provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIAWD6AJWJAZDXRBBC3"
    secret_key = "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"

}resource "aws_instance" "aws"{
    ami ="ami-072f48a9ed4f1bbda"
    instance_type ="t2.micro"

}
output "public_ip"{
    value = aws_instance.aws.public_ip
}