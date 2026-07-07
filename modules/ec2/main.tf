resource "aws_key_pair" "my_key" {
    key_name   = "my-key"
    public_key = file("./server-key.pub")
}

resource "aws_instance" "server_name" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.my_key.key_name
    vpc_security_group_ids = [var.security_group_id]
    subnet_id = var.subnet_id


    tags = {
        Name = var.server_name
    }
  
}