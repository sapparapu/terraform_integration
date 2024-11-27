provider "aws" {
    region = "us-east-1"
  
}
resource "aws_key_pair" "name1" {
    key_name = "south_key"
    public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "dev" {
   ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = aws_key_pair.name1.key_name
    tags = {
      name = "key_tf"
    }

}