output "privateIP" {
  value = aws_instance.my-instance.private_ip
  description = "Private IP of EC2 instance"
}