output "nat_gateway_ids" {
 value = module.vpc.natgw_ids
}

output "db_subnet_group_id" {
 value = module.vpc.database_subnet_group
}

output "private_subnet_ids" {
 value = module.vpc.private_subnets
}
