/*
    Required Variables
*/
variable "aws_region" {
  description = "AWS Region Name."
  type        = string
}

/*
    VPC Info Variables
*/
variable "vpc_id" {
  description = "AWS VPC ID"
  type        = string
}

variable "public_subnet_tag_filter" {
  description = "Tag to be filter in subnets"
  type        = map(any)

  default = {
    Name = "*public*"
  }
}

variable "all_private_subnet_tag_filter" {
  description = "Tag to be filter in subnets"
  type        = map(any)

  default = {
    Name = "*private*"
  }
}

variable "lambda_subnet_tag_filter" {
  description = "Tag to be filter in subnets"
  type        = map(any)
  default = {
    Name   = "*private*"
    lambda = "yes"
  }
}

variable "lambda_cidr_block_filter" {
  description = "Used To filter CIDR's Blocks"
  type        = list(string)
  default     = ["*"]
}

variable "cidr_block_filter" {
  description = "Used To filter CIDR's Blocks"
  type        = list(string)
  default     = ["*"]
}

variable "allowed_sgs" {
  description = "Allowed Security Groups"
  type        = list(string)
  default     = []
}

variable "access_cidr_blocks" {
  description = "Access CIDR Blocks"
  type        = list(string)
  default     = []
}

variable "additional_whitelist_cidr_blocks" {
  description = "description"
  type        = list(string)
  default     = []
}
