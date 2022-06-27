include "root" {
  path           = find_in_parent_folders()
  expose         = true
  merge_strategy = "deep"
}

terraform {
  source = "../../../../../../../apps/modules//vpc/"
}

inputs = {
  aws_region = include.root.locals.merged.aws_region
  vpc_id     = include.root.locals.merged.vpc_id
}
