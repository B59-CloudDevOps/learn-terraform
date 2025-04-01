
resource "aws_instance" "main" {
  for_each = var.componets

  ami = each.value["ami"]
  # instance_type          = each.value["instance_type"] == ".*" ? each.value["instance_type"] : "t3.nano"
  instance_type          = try(each.value["instance_type"], null) == null ? "t3.nano" : each.value["instance_type"]
  vpc_security_group_ids = ["sg-0b37bb6b6f027ffc5"]

  tags = {
    Name = each.key
  }
}

