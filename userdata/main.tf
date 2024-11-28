resource "aws_instance" "dev" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "new_key_us"
  user_data = file ("script.sh")
  tags = {
    name = "ec2_data"
  }
}