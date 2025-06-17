resource "aws_security_group" "security_group_ec2" {
    name = "EC2 Security"
    vpc_id = aws_vpc.ec2_all_vpc.id
    description = "EC2 Security Group"

    ingress {
        from_port = 80
        to_port =  80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}