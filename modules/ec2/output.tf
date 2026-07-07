output "aws_instance_id" {
  value = aws_instance.server_name.id
}

output "aws_instance_public_ip" {
  value = aws_instance.server_name.public_ip
}

output "key_pair_name" {
  value = aws_key_pair.my_key.key_name
}