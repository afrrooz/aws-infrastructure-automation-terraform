resource "aws_eip" "Elastic_IP" {
  instance = var.instance_id
  domain   = "vpc"
  
}   