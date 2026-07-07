variable "ami" {}
variable "instance_type" {}
variable "server_name" {}
variable "security_group_id" {
    type = string
}
variable "subnet_id" {
    type = string
}