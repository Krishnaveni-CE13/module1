
module "vpc" {
 source  = "terraform-aws-modules/vpc/aws"


 name = "krish-module-vpc" # Change this!!!
 cidr = "10.0.0.0/16"


 azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
 private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
 public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
 database_subnets                     = ["10.0.201.0/24", "10.0.202.0/24", "10.0.203.0/24"]
  create_database_subnet_group         = true   # creates the aws_db_subnet_group
  create_database_subnet_route_table   = true   # separate route table so DB subnets aren't tied to app private subnets
  database_subnet_group_name           = "krish-module-db-subnet-group"


 enable_nat_gateway   = true
 single_nat_gateway   = true
 enable_dns_hostnames = true


 tags = {
  Terraform = "true"
 }
}

