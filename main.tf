provider "aws" {
    region = "ap-south-1"
    profile = "kusum"
  
}


module "my_ec2_instance" {
    source = "./ec2_instance"
    ami           = "ami-0af9569868786b23a"
    instance_type = "t2.micro"
    instance_name = "example-instance"
}



# output "instance_id" {
#           value = module.my_ec2_instance.instance_id
# }

# terraform/
# ├── main.tf
# ├── variables.tf
# ├── outputs.tf
# ├── terraform.tfvars
# └── modules/
#     ├── vpc/
#     │   ├── main.tf
#     │   ├── variables.tf
#     │   └── outputs.tf
#     ├── subnet/
#     │   ├── main.tf
#     │   ├── variables.tf
#     │   └── outputs.tf
#     ├── security_group/
#     │   ├── main.tf
#     │   ├── variables.tf
#     │   └── outputs.tf
#     └── ec2/
#         ├── main.tf
#         ├── variables.tf
#         └── outputs.tf
