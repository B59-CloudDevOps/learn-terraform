variable "componets" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mysql = {
      instance_type = "t3.medium"

    }
    backend = {
      instance_type = "t2.micro"
    }
  }
}

variable "ami" {
  default = "ami-0fcc78c828f981df2"
}

variable "vpc_security_group_ids" {
  default = "sg-0b37bb6b6f027ffc5"
}