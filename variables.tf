variable "project_freeze_periods" {
  description = <<EOT
Map of project_freeze_periods, attributes below
Required:
    - freeze_end
    - freeze_start
    - project
Optional:
    - cron_timezone
EOT

  type = map(object({
    freeze_end    = string
    freeze_start  = string
    project       = string
    cron_timezone = optional(string)
  }))
}

