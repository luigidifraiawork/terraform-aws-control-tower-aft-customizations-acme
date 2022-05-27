output "route53_zone_id" {
  value = aws_route53_zone.delegated_private.id
}

output "route53_zone_name" {
  value = aws_route53_zone.delegated_private.name
}