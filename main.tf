resource "gitlab_project_freeze_period" "project_freeze_periods" {
  for_each = var.project_freeze_periods

  freeze_end    = each.value.freeze_end
  freeze_start  = each.value.freeze_start
  project       = each.value.project
  cron_timezone = each.value.cron_timezone
}

