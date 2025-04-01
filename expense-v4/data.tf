data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = false
}

output "zone" {
  value = data.aws_route53_zone.main
}