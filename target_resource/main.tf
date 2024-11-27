resource "aws_instance" "dev" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "new_key_us"
  
}
resource "aws_s3_bucket" "dev" {
    bucket = "vanbuc"
  
}