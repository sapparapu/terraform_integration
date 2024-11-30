# create instance 

resource "aws_instance" "dev" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
   # count = 3
    count =length(var.sandboxes)
    tags = {
      #name ="web"
      #name = "web-${count.index}"
        name = var.sandboxes[count.index]
    }
}

variable "sandboxes" {
    type = list(string)
  default = [ "prod" ]
}