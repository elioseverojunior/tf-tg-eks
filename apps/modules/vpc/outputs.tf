/*
    Environment Outputs
*/
output "aws_region" {
  value = var.aws_region
}

/*
    VPC Info Outputs
*/
output "vpc_id" {
  value = data.aws_vpc.vpc_info.id
}

output "all_subnet_ids" {
  description = "AWS Subnet Ids"
  value       = [for subnet in data.aws_subnet_ids.all.ids : subnet]
}

output "all_subnets_cidr_blocks" {
  description = "All Subnet CIDR Blocks"
  value       = [for subnet in data.aws_subnet.all : subnet.cidr_block]
}

output "public_subnet_ids" {
  description = "All Public AWS Subnet Ids"
  value       = [for subnet in data.aws_subnet_ids.public.ids : subnet]
}

output "public_subnets_cidr_blocks" {
  value = [for subnet in data.aws_subnet.public : subnet.cidr_block]
}

output "all_private_subnet_ids" {
  description = "All Private AWS Subnet Ids"
  value       = [for subnet in data.aws_subnet_ids.all_private.ids : subnet]
}

output "private_subnets" {
  description = "All Private AWS Subnet Ids"
  value       = [for subnet in data.aws_subnet_ids.all_private.ids : subnet]
}

output "all_private_subnets_cidr_blocks" {
  value = [for subnet in data.aws_subnet.all_private : subnet.cidr_block]
}

output "private_subnets_cidr_blocks" {
  value = [for subnet in data.aws_subnet.all_private : subnet.cidr_block]
}

output "all_private_subnet_ids_by_filter" {
  description = "AWS Subnet Ids all_private_by_filter"
  value       = [for subnet in sort(data.aws_subnet_ids.all_private_by_filter.ids) : subnet]
}

output "all_private_subnets_cidr_blocks_by_filter" {
  value = [for subnet in data.aws_subnet.all_private_by_filter : subnet.cidr_block]
}

output "cidr_blocks" {
  value = local.cidr_blocks
}

output "security_groups" {
  value = local.security_groups
}
