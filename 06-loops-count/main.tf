resource "null_resource" "main" {
  count = 3
}

variable "fruits" {
  default = ["grapes", "apple", "strawberry"]
}

resource "null_resource" "this" {
  count = length(var.fruits)
}