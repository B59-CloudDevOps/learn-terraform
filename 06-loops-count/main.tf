resource "null_resource" "main" {
  count = 3
}

variable "fruits" {
  default = ["strawberry", "grapes", "apple", ]
}

resource "null_resource" "this" {
  count = length(var.fruits)
}