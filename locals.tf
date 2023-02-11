locals {
  tags = merge(var.tags, {
    responsible = "infra"
    versioning  = var.versioning_enabled
    encryption  = var.encryption_enabled
  })
}