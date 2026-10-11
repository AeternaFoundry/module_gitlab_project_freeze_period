output "project_freeze_periods_id" {
  description = "Map of id values across all project_freeze_periods, keyed the same as var.project_freeze_periods except keys with no id are omitted"
  value       = { for k, v in gitlab_project_freeze_period.project_freeze_periods : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_freeze_periods_cron_timezone" {
  description = "Map of cron_timezone values across all project_freeze_periods, keyed the same as var.project_freeze_periods except keys with no cron_timezone are omitted"
  value       = { for k, v in gitlab_project_freeze_period.project_freeze_periods : k => v.cron_timezone if v.cron_timezone != null && length(v.cron_timezone) > 0 }
}
output "project_freeze_periods_freeze_end" {
  description = "Map of freeze_end values across all project_freeze_periods, keyed the same as var.project_freeze_periods except keys with no freeze_end are omitted"
  value       = { for k, v in gitlab_project_freeze_period.project_freeze_periods : k => v.freeze_end if v.freeze_end != null && length(v.freeze_end) > 0 }
}
output "project_freeze_periods_freeze_start" {
  description = "Map of freeze_start values across all project_freeze_periods, keyed the same as var.project_freeze_periods except keys with no freeze_start are omitted"
  value       = { for k, v in gitlab_project_freeze_period.project_freeze_periods : k => v.freeze_start if v.freeze_start != null && length(v.freeze_start) > 0 }
}
output "project_freeze_periods_project" {
  description = "Map of project values across all project_freeze_periods, keyed the same as var.project_freeze_periods except keys with no project are omitted"
  value       = { for k, v in gitlab_project_freeze_period.project_freeze_periods : k => v.project if v.project != null && length(v.project) > 0 }
}

