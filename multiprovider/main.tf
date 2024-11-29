provider "aws" {
  region = "us-east-1"
}
provider "aws" {
    region = "us-east-1"
    alias = "provider2"
  
}
resource "aws_s3_bucket" "name" {
    bucket = "vanbuc"

  
}
resource "aws_s3_bucket" "name1" {
    bucket = "vanbuc1"
    provider = aws.provider2
  
}