# include "root" {
#   path           = find_in_parent_folders()
#   expose         = true
#   merge_strategy = "deep"
# }

# terraform {
#   source = "git::https://github.com/elioseverojunior/tf-aws-apps.git//apps/private-route53?ref=v1.0.0"
# }

# inputs = {
#   aws_region = include.root.locals.merged.aws_region
#   vpc_id     = include.root.locals.merged.vpc_id
# }
