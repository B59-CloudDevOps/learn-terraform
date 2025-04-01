data "aws_route53_zone" "main" {
  name         = "clouding-app.shop"
  private_zone = true
}

output "zone" {
  value = data.aws_route53_zone.main
}