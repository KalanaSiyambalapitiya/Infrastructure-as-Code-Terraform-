terraform {
 required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "6.44.0"

  }
 }
  backend "s3" {
  bucket = "kalanabucket001"
  key = "terraform.tfstate"
  region = "ap-south-1"
 }


}


 
resource "aws_s3_bucket" "my_bucket01" {
  bucket = "kalanabucket001"
}




provider "aws" {
    region = "ap-south-1"
}

 

module "ec2" {
  source = "./modules/ec2"
  AMI_ID = "ami-07a00cf47dbbc844c" 


}
 
module "s3_bucket" {
  source = "./modules/s3"

}
 