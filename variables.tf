variable "apps_secret_securevalue_v1beta1s" {
  description = <<EOT
Map of apps_secret_securevalue_v1beta1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
    - options (block):
        - manager_identity (optional)
        - overwrite (optional)
    - spec (block):
        - decrypters (optional)
        - description (optional)
        - ref (optional)
        - value (optional)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
    options = optional(list(object({
      manager_identity = optional(string)
      overwrite        = optional(bool)
    })))
    spec = optional(list(object({
      decrypters  = optional(list(string))
      description = optional(string)
      ref         = optional(string)
      value       = optional(string)
    })))
  }))
}

