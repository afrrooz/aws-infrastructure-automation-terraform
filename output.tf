# ec2 instance outputs
output "aws_instance_id" {
  value = module.app_server.aws_instance_id
}

output "aws_instance_public_ip" {
  value = module.app_server.aws_instance_public_ip
}

output "key_pair_name" {
  value = module.app_server.key_pair_name
}

# s3 bucket outputs
output "storage_bucket_name" {
  value = module.storage.bucket_name
}

output "ARN" {
  value = module.storage.bucket_arn
}

# vpc outputs
output "vpc_id" {
  value = module.vpc_with_subnet.vpc_id
}

output "public_subnet_id" {
  value = module.vpc_with_subnet.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc_with_subnet.private_subnet_id
}

# security group outputs
output "security_group_id" {
  value = module.security_group.security_group_id
}

# lambda function outputs
output "lambda_function_name" {
  value = module.lambda_function.Lambda_function_name
}

output "lambda_function_arn" {
  value = module.lambda_function.Lambda_function_arn
}

# elastic ip outputs
output "public_ip" {
  value = module.elastic_ip.public_ip
}

# cloud watch outputs
output "alarm_name" {
  value = module.cloud_watch.alarm_name
}