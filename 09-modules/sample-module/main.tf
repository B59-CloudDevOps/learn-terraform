resource "null_resource" "main" {
  count = length(var.fruits)
}

variable "fruits" {}