# Global variables

variable "monitor_type" {
  type        = string
  description = "Type for all monitors among incident, information"
  default     = ""
}

variable "template" {
  description = "Template name"
  default     = "azure-sql_servers_databases"
}

variable "asset_lbnref" {
  description = "Asset lbnref"
}

variable "asset_name" {
  description = "Asset name"
}

variable "default_tags" {
  description = "map of default tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "custom_tags" {
  description = "map of custom tags to set on ressources"
  type        = map(string)
  default     = {}
}

variable "isprod" {
  description = "activate the monitor on production on Sentinel"
  default     = "false"
}

variable "notify_to" {
  description = "Define notification hooks"
  default     = "@webhook-SGCProd @monitoring-teams"
}

variable "notify_capacity" {
  description = "to who notify capacity alerts"
  default     = ""
}

variable "category" {
  description = "Category of the monitors"
  default     = "228"
}

variable "customer_name" {
  description = "Client name as in Idefix"
}

variable "customer_id" {
  description = "ID of the client in Idefix"
}

variable "team_in_charge" {
  description = "Define the team in charge"
  default     = "Undefined"
}

variable "evaluation_delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 15
}

variable "new_host_delay" {
  description = "Delay in seconds before monitor new resource"
  default     = 300
}

variable "escalation_message" {
  description = "Default escalation message"
  default     = ""
}

variable "renotify_interval" {
  description = "Delay in minutes before monitor is renotified"
  default     = 40
}

variable "include_tags" {
  description = "Include triggered event tags in title"
  default     = false
}

# Datadog monitors variables

## sql_servers_databases_cpu_usage

variable "activated_sql_servers_databases_cpu_usage" {
  description = "If the monitor [sql_servers_databases_cpu_usage] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_cpu_usage" {
  description = "Custom message for monitor [sql_servers_databases_cpu_usage]"
  type        = string

  default = <<EOM
    Verify if CPU usage of the database is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_cpu_usage" {
  description = "Escalation message for monitor [sql_servers_databases_cpu_usage]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_cpu_usage" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_cpu_usage]"
  default     = ""
}

variable "isprod_sql_servers_databases_cpu_usage" {
  description = "Define whether the monitor [sql_servers_databases_cpu_usage] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_cpu_usage" {
  description = "Define the IRP for monitor [sql_servers_databases_cpu_usage]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9790"
}

variable "severity_sql_servers_databases_cpu_usage" {
  description = "Define severity for monitor [sql_servers_databases_cpu_usage]"
  default     = "3"
}

variable "category_sql_servers_databases_cpu_usage" {
  description = "Define category for monitor [sql_servers_databases_cpu_usage]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_cpu_usage" {
  description = "Monitor timeframe for monitor [sql_servers_databases_cpu_usage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_cpu_usage" {
  description = "Type for monitor [sql_servers_databases_cpu_usage] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_cpu_usage" {
  description = "Extra tags for monitor [sql_servers_databases_cpu_usage]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_cpu_usage" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_cpu_usage]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_cpu_usage" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_cpu_usage" {
  description = "Monitor [sql_servers_databases_cpu_usage] critical threshold"
  default     = "98"
}

variable "threshold_critical_recovery_sql_servers_databases_cpu_usage" {
  description = "Monitor [sql_servers_databases_cpu_usage] critical recovery threshold"
  default     = "95"
}

## sql_servers_databases_deadlock

variable "activated_sql_servers_databases_deadlock" {
  description = "If the monitor [sql_servers_databases_deadlock] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_deadlock" {
  description = "Custom message for monitor [sql_servers_databases_deadlock]"
  type        = string

  default = <<EOM
    Verify if the number of deadlocks on database is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_deadlock" {
  description = "Escalation message for monitor [sql_servers_databases_deadlock]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_deadlock" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_deadlock]"
  default     = ""
}

variable "isprod_sql_servers_databases_deadlock" {
  description = "Define whether the monitor [sql_servers_databases_deadlock] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_deadlock" {
  description = "Define the IRP for monitor [sql_servers_databases_deadlock]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9792"
}

variable "severity_sql_servers_databases_deadlock" {
  description = "Define severity for monitor [sql_servers_databases_deadlock]"
  default     = "3"
}

variable "category_sql_servers_databases_deadlock" {
  description = "Define category for monitor [sql_servers_databases_deadlock]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_deadlock" {
  description = "Monitor timeframe for monitor [sql_servers_databases_deadlock] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_deadlock" {
  description = "Type for monitor [sql_servers_databases_deadlock] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_deadlock" {
  description = "Extra tags for monitor [sql_servers_databases_deadlock]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_deadlock" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_deadlock]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_deadlock" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_deadlock" {
  description = "Monitor [sql_servers_databases_deadlock] critical threshold"
  default     = "10"
}

variable "threshold_critical_recovery_sql_servers_databases_deadlock" {
  description = "Monitor [sql_servers_databases_deadlock] critical recovery threshold"
  default     = "5"
}

## sql_servers_databases_dtu_forecast

variable "activated_sql_servers_databases_dtu_forecast" {
  description = "If the monitor [sql_servers_databases_dtu_forecast] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_dtu_forecast" {
  description = "Custom message for monitor [sql_servers_databases_dtu_forecast]"
  type        = string

  default = <<EOM
    Verify if DTU forecast for database is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_dtu_forecast" {
  description = "Escalation message for monitor [sql_servers_databases_dtu_forecast]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_dtu_forecast" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_dtu_forecast]"
  default     = ""
}

variable "isprod_sql_servers_databases_dtu_forecast" {
  description = "Define whether the monitor [sql_servers_databases_dtu_forecast] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_dtu_forecast" {
  description = "Define the IRP for monitor [sql_servers_databases_dtu_forecast]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9787"
}

variable "severity_sql_servers_databases_dtu_forecast" {
  description = "Define severity for monitor [sql_servers_databases_dtu_forecast]"
  default     = "3"
}

variable "category_sql_servers_databases_dtu_forecast" {
  description = "Define category for monitor [sql_servers_databases_dtu_forecast]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_dtu_forecast" {
  description = "Monitor timeframe for monitor [sql_servers_databases_dtu_forecast] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_dtu_forecast" {
  description = "Type for monitor [sql_servers_databases_dtu_forecast] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_dtu_forecast" {
  description = "Extra tags for monitor [sql_servers_databases_dtu_forecast]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_dtu_forecast" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_dtu_forecast]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_dtu_forecast" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_dtu_forecast" {
  description = "Monitor [sql_servers_databases_dtu_forecast] critical threshold"
  default     = "99"
}

variable "threshold_critical_recovery_sql_servers_databases_dtu_forecast" {
  description = "Monitor [sql_servers_databases_dtu_forecast] critical recovery threshold"
  default     = "90"
}

## sql_servers_databases_dtu_status

variable "activated_sql_servers_databases_dtu_status" {
  description = "If the monitor [sql_servers_databases_dtu_status] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_dtu_status" {
  description = "Custom message for monitor [sql_servers_databases_dtu_status]"
  type        = string

  default = <<EOM
    Verify if DTU usage of the database is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_dtu_status" {
  description = "Escalation message for monitor [sql_servers_databases_dtu_status]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_dtu_status" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_dtu_status]"
  default     = ""
}

variable "isprod_sql_servers_databases_dtu_status" {
  description = "Define whether the monitor [sql_servers_databases_dtu_status] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_dtu_status" {
  description = "Define the IRP for monitor [sql_servers_databases_dtu_status]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9787"
}

variable "severity_sql_servers_databases_dtu_status" {
  description = "Define severity for monitor [sql_servers_databases_dtu_status]"
  default     = "3"
}

variable "category_sql_servers_databases_dtu_status" {
  description = "Define category for monitor [sql_servers_databases_dtu_status]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_dtu_status" {
  description = "Monitor timeframe for monitor [sql_servers_databases_dtu_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_dtu_status" {
  description = "Type for monitor [sql_servers_databases_dtu_status] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_dtu_status" {
  description = "Extra tags for monitor [sql_servers_databases_dtu_status]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_dtu_status" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_dtu_status]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_dtu_status" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_dtu_status" {
  description = "Monitor [sql_servers_databases_dtu_status] critical threshold"
  default     = "99"
}

variable "threshold_critical_recovery_sql_servers_databases_dtu_status" {
  description = "Monitor [sql_servers_databases_dtu_status] critical recovery threshold"
  default     = "90"
}

## sql_servers_databases_dwu_forecast

variable "activated_sql_servers_databases_dwu_forecast" {
  description = "If the monitor [sql_servers_databases_dwu_forecast] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_dwu_forecast" {
  description = "Custom message for monitor [sql_servers_databases_dwu_forecast]"
  type        = string

  default = <<EOM
    Verify if DWU (for Datawarehouse) usage is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_dwu_forecast" {
  description = "Escalation message for monitor [sql_servers_databases_dwu_forecast]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_dwu_forecast" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_dwu_forecast]"
  default     = ""
}

variable "isprod_sql_servers_databases_dwu_forecast" {
  description = "Define whether the monitor [sql_servers_databases_dwu_forecast] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_dwu_forecast" {
  description = "Define the IRP for monitor [sql_servers_databases_dwu_forecast]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9788"
}

variable "severity_sql_servers_databases_dwu_forecast" {
  description = "Define severity for monitor [sql_servers_databases_dwu_forecast]"
  default     = "3"
}

variable "category_sql_servers_databases_dwu_forecast" {
  description = "Define category for monitor [sql_servers_databases_dwu_forecast]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_dwu_forecast" {
  description = "Monitor timeframe for monitor [sql_servers_databases_dwu_forecast] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_dwu_forecast" {
  description = "Type for monitor [sql_servers_databases_dwu_forecast] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_dwu_forecast" {
  description = "Extra tags for monitor [sql_servers_databases_dwu_forecast]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_dwu_forecast" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_dwu_forecast]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_dwu_forecast" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_dwu_forecast" {
  description = "Monitor [sql_servers_databases_dwu_forecast] critical threshold"
  default     = "99"
}

variable "threshold_critical_recovery_sql_servers_databases_dwu_forecast" {
  description = "Monitor [sql_servers_databases_dwu_forecast] critical recovery threshold"
  default     = "90"
}

## sql_servers_databases_dwu_usage

variable "activated_sql_servers_databases_dwu_usage" {
  description = "If the monitor [sql_servers_databases_dwu_usage] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_dwu_usage" {
  description = "Custom message for monitor [sql_servers_databases_dwu_usage]"
  type        = string

  default = <<EOM
    Verify if DWU datawarehouse usage is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_dwu_usage" {
  description = "Escalation message for monitor [sql_servers_databases_dwu_usage]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_dwu_usage" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_dwu_usage]"
  default     = ""
}

variable "isprod_sql_servers_databases_dwu_usage" {
  description = "Define whether the monitor [sql_servers_databases_dwu_usage] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_dwu_usage" {
  description = "Define the IRP for monitor [sql_servers_databases_dwu_usage]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9714"
}

variable "severity_sql_servers_databases_dwu_usage" {
  description = "Define severity for monitor [sql_servers_databases_dwu_usage]"
  default     = "3"
}

variable "category_sql_servers_databases_dwu_usage" {
  description = "Define category for monitor [sql_servers_databases_dwu_usage]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_dwu_usage" {
  description = "Monitor timeframe for monitor [sql_servers_databases_dwu_usage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_dwu_usage" {
  description = "Type for monitor [sql_servers_databases_dwu_usage] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_dwu_usage" {
  description = "Extra tags for monitor [sql_servers_databases_dwu_usage]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_dwu_usage" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_dwu_usage]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_dwu_usage" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_dwu_usage" {
  description = "Monitor [sql_servers_databases_dwu_usage] critical threshold"
  default     = "96"
}

variable "threshold_critical_recovery_sql_servers_databases_dwu_usage" {
  description = "Monitor [sql_servers_databases_dwu_usage] critical recovery threshold"
  default     = "95"
}

## sql_servers_databases_failedconnection

variable "activated_sql_servers_databases_failedconnection" {
  description = "If the monitor [sql_servers_databases_failedconnection] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_failedconnection" {
  description = "Custom message for monitor [sql_servers_databases_failedconnection]"
  type        = string

  default = <<EOM
    Verify if rate of failed connections compared to total connections is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_failedconnection" {
  description = "Escalation message for monitor [sql_servers_databases_failedconnection]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_failedconnection" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_failedconnection]"
  default     = ""
}

variable "isprod_sql_servers_databases_failedconnection" {
  description = "Define whether the monitor [sql_servers_databases_failedconnection] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_failedconnection" {
  description = "Define the IRP for monitor [sql_servers_databases_failedconnection]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9791"
}

variable "severity_sql_servers_databases_failedconnection" {
  description = "Define severity for monitor [sql_servers_databases_failedconnection]"
  default     = "3"
}

variable "category_sql_servers_databases_failedconnection" {
  description = "Define category for monitor [sql_servers_databases_failedconnection]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_failedconnection" {
  description = "Monitor timeframe for monitor [sql_servers_databases_failedconnection] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_failedconnection" {
  description = "Type for monitor [sql_servers_databases_failedconnection] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_failedconnection" {
  description = "Extra tags for monitor [sql_servers_databases_failedconnection]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_failedconnection" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_failedconnection]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_failedconnection" {
  description = "Will raise no data alert if set to true"
  default     = true
}

variable "threshold_critical_sql_servers_databases_failedconnection" {
  description = "Monitor [sql_servers_databases_failedconnection] critical threshold"
  default     = "40"
}

variable "threshold_critical_recovery_sql_servers_databases_failedconnection" {
  description = "Monitor [sql_servers_databases_failedconnection] critical recovery threshold"
  default     = "20"
}

variable "tolerance_rate_sql_servers_databases_failedconnection" {
  description = "Give leverage for a mitigation value to limit in case of low connection"
  default     = "3"
}

## sql_servers_databases_status

variable "activated_sql_servers_databases_status" {
  description = "If the monitor [sql_servers_databases_status] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_status" {
  description = "Custom message for monitor [sql_servers_databases_status]"
  type        = string

  default = <<EOM
    Verify if sql servers dabase service status is below the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_status" {
  description = "Escalation message for monitor [sql_servers_databases_status]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_status" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_status]"
  default     = ""
}

variable "isprod_sql_servers_databases_status" {
  description = "Define whether the monitor [sql_servers_databases_status] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_status" {
  description = "Define the IRP for monitor [sql_servers_databases_status]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9663"
}

variable "severity_sql_servers_databases_status" {
  description = "Define severity for monitor [sql_servers_databases_status]"
  default     = "1"
}

variable "category_sql_servers_databases_status" {
  description = "Define category for monitor [sql_servers_databases_status]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_status" {
  description = "Monitor timeframe for monitor [sql_servers_databases_status] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_status" {
  description = "Type for monitor [sql_servers_databases_status] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_status" {
  description = "Extra tags for monitor [sql_servers_databases_status]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_status" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_status]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_status" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_status" {
  description = "Monitor [sql_servers_databases_status] critical threshold"
  default     = "0.8"
}

variable "threshold_critical_recovery_sql_servers_databases_status" {
  description = "Monitor [sql_servers_databases_status] critical recovery threshold"
  default     = "1"
}

## sql_servers_databases_storage_usage

variable "activated_sql_servers_databases_storage_usage" {
  description = "If the monitor [sql_servers_databases_storage_usage] is activated"
  type        = string
  default     = "true"
}

variable "message_sql_servers_databases_storage_usage" {
  description = "Custom message for monitor [sql_servers_databases_storage_usage]"
  type        = string

  default = <<EOM
    Verify if storage usage of the database is above the defined threshold during last check period.
    See IRP for more informations.
  
EOM

}

variable "escalation_message_sql_servers_databases_storage_usage" {
  description = "Escalation message for monitor [sql_servers_databases_storage_usage]"
  type        = string
  default     = ""
}

variable "notify_sql_servers_databases_storage_usage" {
  description = "Define notification hooks for monitor [notify_sql_servers_databases_storage_usage]"
  default     = ""
}

variable "isprod_sql_servers_databases_storage_usage" {
  description = "Define whether the monitor [sql_servers_databases_storage_usage] is in production or not"
  default     = ""
}

variable "irp_sql_servers_databases_storage_usage" {
  description = "Define the IRP for monitor [sql_servers_databases_storage_usage]"
  default     = "https://intranet.linkbynet.com/v7/Monitoring/IRP/View?Id=9789"
}

variable "severity_sql_servers_databases_storage_usage" {
  description = "Define severity for monitor [sql_servers_databases_storage_usage]"
  default     = "3"
}

variable "category_sql_servers_databases_storage_usage" {
  description = "Define category for monitor [sql_servers_databases_storage_usage]"
  default     = "228"
}

variable "timeframe_sql_servers_databases_storage_usage" {
  description = "Monitor timeframe for monitor [sql_servers_databases_storage_usage] [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = string
  default     = "last_30m"
}

variable "type_sql_servers_databases_storage_usage" {
  description = "Type for monitor [sql_servers_databases_storage_usage] among incident, information"
  type        = string
  default     = "incident"
}

variable "extra_tags_sql_servers_databases_storage_usage" {
  description = "Extra tags for monitor [sql_servers_databases_storage_usage]"
  type        = list(string)
  default     = []
}

variable "no_data_timeframe_sql_servers_databases_storage_usage" {
  description = "No data timeframe in minutes for monitor [sql_servers_databases_storage_usage]"
  default     = 1440
}

variable "notify_no_data_sql_servers_databases_storage_usage" {
  description = "Will raise no data alert if set to true"
  default     = false
}

variable "threshold_critical_sql_servers_databases_storage_usage" {
  description = "Monitor [sql_servers_databases_storage_usage] critical threshold"
  default     = "98"
}

variable "threshold_critical_recovery_sql_servers_databases_storage_usage" {
  description = "Monitor [sql_servers_databases_storage_usage] critical recovery threshold"
  default     = "95"
}

##
