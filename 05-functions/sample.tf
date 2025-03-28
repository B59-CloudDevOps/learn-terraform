# Declaring an empty variable
variable "fruits" {}


output "apple_opx" {
  value = "Apples are ${lookup(var.fruits["apple"], "color", "GREEN")} and their state of origin is ${lookup(var.fruits["apple"], "state", "HP")}"
}