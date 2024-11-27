provider "aws" {
  region = "us-east-1"
}
resource "aws_s3_bucket" "name" {
    bucket = "vanbuc"
    depends_on=[aws_instance.test]

  
}
resource "aws_instance" "test" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "new_key_us"
  
}