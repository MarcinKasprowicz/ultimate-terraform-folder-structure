output "dns" {
  value       = aws_elastic_beanstalk_environment.env.cname
  description = "DNS name of the app"
}
