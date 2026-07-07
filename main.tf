# This terraform configuration file provisions an Ec2 instance.
module "app_server" {
  source = "./modules/ec2"

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  server_name   = "app-server"
  # The security group ID and subnet ID are passed as variables to the EC2 module.
  security_group_id = module.security_group.security_group_id
  subnet_id         = module.vpc_with_subnet.public_subnet_id
}
# This terraform configuration file provisions an Elastic IP and associates it with the EC2 instance.
module "elastic_ip" {
  source = "./modules/elastic_ip"

  instance_id = module.app_server.aws_instance_id
}

# This terraform configuration file provisions an S3 bucket.
module "storage" {
  source     = "./modules/s3"
  Name       = "afroz-terraform-bucket"
  versioning = "Enabled"
  public_access_block = {
    block_public_acls = true
  }

}
# This terraform configuration file provisions a VPC with public and private subnets.
module "vpc_with_subnet" {
  source = "./modules/vpc_with_subnet"

  Name       = "vpc-with-subnet"
  cidr_block = "10.0.0.0/16"
}
# This terraform configuration file provisions a security group.
module "security_group" {
  source = "./modules/security_group"

  Name   = "my-security-group"
  vpc_id = module.vpc_with_subnet.vpc_id
}

# This terraform configuration file provisions a Lambda function.
module "lambda_function" {
  source = "./modules/lambda"

  function_name = "my_lambda_function"
  runtime       = "python3.9"
  Environment   = "dev"
  Application   = "my_app"
}

# This terraform configuration file provisions a CloudWatch alarm.
module "cloud_watch" {
  source = "./modules/cloud_watch"

  instance_id         = module.app_server.aws_instance_id
  alarm_name          = "CPU_Utilization_Alarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 60
  statistic           = "Average"
  threshold           = 80
}
