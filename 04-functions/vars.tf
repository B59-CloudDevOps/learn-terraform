# Declaring an empty variable
variable "fruits" {}

output "apple_op" {
  value = var.fruits
}

output "apple_op_x" {
  value = "Apple is ${var.fruits["apple"]["color"]} in color and its taste is ${var.fruits["apple"]["taste"]} and its price is ${var.fruits["apple"]["price"]} per ${var.fruits["apple"]["metric"]}"
}