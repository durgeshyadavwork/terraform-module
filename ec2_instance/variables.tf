variable "ami" {
    description = "AMI ID"
    type = string
  
}

variable "instance_type" {
    description = "Instance Type"
    default = "t2.micro"
    type = string
  
}

variable "instance_name" {
    default = "default name"
    description = "Name for Instance"
    type = string
  
}