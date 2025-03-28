# Supported datatypes in terraform
# 1) Numbers 
# 2) Boolents 
# 3) Strings

# variable "a" {}  # This is how you define an emoty variable

variable "a" {
  default = 10 # This is how you define a variable with default value 
}

output "op" {   # This is how you print an output variable
  value = var.a # This is how we can access a variable
}

output "op_x" {
  value = "Value of a is ${var.a}"
}

# List variable 
variable "sample_list" {
  default = [
    5000,
    "terraform",
    true
  ]
}

output "sample_op" {
  value = var.sample_list
}

output "sample_op_x" {
  value = "${var.sample_list[1]} is a popular IAC Tool and it supports more than ${var.sample_list[0]} providers and its ${var.sample_list[2]} "
}