variable "devopsguru_notification_channels" {
  description = <<EOT
Map of devopsguru_notification_channels, attributes below
Optional:
    - region
    - filters (block):
        - message_types (optional)
        - severities (optional)
    - sns (block):
        - topic_arn (required)
EOT

  type = map(object({
    region = optional(string)
    filters = optional(list(object({
      message_types = optional(set(string))
      severities    = optional(set(string))
    })))
    sns = optional(list(object({
      topic_arn = string
    })))
  }))
}

