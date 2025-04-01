module "sample" {
  source = "./sample-module" # Source can be from Terarform Registry Path, Local Path or from a remote git repository
  fruits = var.fruits
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}