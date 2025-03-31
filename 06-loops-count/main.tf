resource "null_resource" "main" {
  count = 3
}

variable "veggies" {
  default = ["carrot", "cucumber"]
}

resource "null_resource" "this" {
  count = length(var.veggies)
}