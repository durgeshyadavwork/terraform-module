resource "aws_instance" "ec2_all" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
      name = var.instance_name
    }
    key_name      = "kusum"
    subnet_id = aws_subnet.public_subnet.id
    vpc_security_group_ids = [aws_security_group.security_group_ec2.id]
    associate_public_ip_address = true
  
}