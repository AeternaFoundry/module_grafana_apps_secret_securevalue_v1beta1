resource "grafana_apps_secret_securevalue_v1beta1" "apps_secret_securevalue_v1beta1s" {
  for_each = var.apps_secret_securevalue_v1beta1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      manager_identity = options.value.manager_identity
      overwrite        = options.value.overwrite
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? each.value.spec : []
    content {
      decrypters  = spec.value.decrypters
      description = spec.value.description
      ref         = spec.value.ref
      value       = spec.value.value
    }
  }
}

