include "root" {
  path           = find_in_parent_folders()
  expose         = true
  merge_strategy = "deep"
}

terraform {
  source = "../../../../../../../apps/modules//terraform-aws-kms"
}

inputs = {
  description = "EKS Secret Encryption Key for ${title(join(" ", split("-", include.root.locals.full_name)))}"
  alias       = "${include.root.locals.full_name}-secret-encryption"
  tags = merge(
    include.root.locals.custom_tags
  )
  policy_flavor = "eks_root_volume_encryption"
}
