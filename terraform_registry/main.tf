module "aws_instance" {
    source = "terraform-aws-modules/ec2-instance/aws"

 instance_type = "var.instance_type"
 key_name = "var.key_name"
 monitoring             = true
  
  subnet_id              = "subnet-083795ec2e6a96bc8"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }

}