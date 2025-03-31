variable "componets" {
  default = {
    frontend = {
      instance_type = "t3.micro"
      ami           = "ami-0fcc78c828f981df2"
    }
    backend = {
      instance_type = "t2.micro"
      ami           = "ami-0fcc78c828f981df2"
    }
    mysql = {
      instance_type = "t3.medium"
      ami           = "ami-0fcc78c828f981df2"
    }
  }
}
resource "aws_instance" "main" {
  count                  = length(var.componets)
  ami                    = "ami-0fcc78c828f981df2"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0b37bb6b6f027ffc5"]

  tags = {
    Name = var.componets[count.index]
  }
}

