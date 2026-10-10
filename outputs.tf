output "devopsguru_notification_channels_id" {
  description = "Map of id values across all devopsguru_notification_channels, keyed the same as var.devopsguru_notification_channels"
  value       = { for k, v in aws_devopsguru_notification_channel.devopsguru_notification_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devopsguru_notification_channels_filters" {
  description = "Map of filters values across all devopsguru_notification_channels, keyed the same as var.devopsguru_notification_channels"
  value       = { for k, v in aws_devopsguru_notification_channel.devopsguru_notification_channels : k => v.filters if v.filters != null && length(v.filters) > 0 }
}
output "devopsguru_notification_channels_region" {
  description = "Map of region values across all devopsguru_notification_channels, keyed the same as var.devopsguru_notification_channels"
  value       = { for k, v in aws_devopsguru_notification_channel.devopsguru_notification_channels : k => v.region if v.region != null && length(v.region) > 0 }
}
output "devopsguru_notification_channels_sns" {
  description = "Map of sns values across all devopsguru_notification_channels, keyed the same as var.devopsguru_notification_channels"
  value       = { for k, v in aws_devopsguru_notification_channel.devopsguru_notification_channels : k => v.sns if v.sns != null && length(v.sns) > 0 }
}

