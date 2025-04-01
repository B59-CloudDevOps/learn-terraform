data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = false
}

data "aws_security_group" "main" {
  name = "b59-allow-all"
}

# output "sg" {
#   value = data.aws_security_group.main.id
# }