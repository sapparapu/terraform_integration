provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.nano"
    tags = {
      Name = "test"
    }
}