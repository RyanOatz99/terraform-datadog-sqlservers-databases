terraform {
  required_version = ">= 0.13"
  required_providers {
    datadog = {
      source  = "datadog/datadog"
      version = ">= 2.25.0"
    }
  }
}

resource "datadog_monitor" "sql_servers_databases_cpu_usage" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] CPU Usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_cpu_usage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_cpu_usage,
    var.notify_sql_servers_databases_cpu_usage != "" ? var.notify_sql_servers_databases_cpu_usage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_cpu_usage != "" ? var.escalation_message_sql_servers_databases_cpu_usage : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_cpu_usage}):(avg:azure.sql_servers_databases.cpu_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_databases_cpu_usage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_cpu_usage
    critical          = var.threshold_critical_sql_servers_databases_cpu_usage
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_cpu_usage
  notify_no_data      = var.notify_no_data_sql_servers_databases_cpu_usage
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_cpu_usage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_cpu_usage != "" ? var.isprod_sql_servers_databases_cpu_usage : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_cpu_usage}",
      "category:${var.category_sql_servers_databases_cpu_usage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_cpu_usage}",
      "irp:${var.irp_sql_servers_databases_cpu_usage}",
    ],
    var.extra_tags_sql_servers_databases_cpu_usage,
  )
}

resource "datadog_monitor" "sql_servers_databases_deadlock" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] Deadlock number in database over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_deadlock == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_deadlock,
    var.notify_sql_servers_databases_deadlock != "" ? var.notify_sql_servers_databases_deadlock : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_deadlock != "" ? var.escalation_message_sql_servers_databases_deadlock : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_deadlock}):(avg:azure.sql_servers_databases.deadlock{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_databases_deadlock}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_deadlock
    critical          = var.threshold_critical_sql_servers_databases_deadlock
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_deadlock
  notify_no_data      = var.notify_no_data_sql_servers_databases_deadlock
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_deadlock",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_deadlock != "" ? var.isprod_sql_servers_databases_deadlock : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_deadlock}",
      "category:${var.category_sql_servers_databases_deadlock}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_deadlock}",
      "irp:${var.irp_sql_servers_databases_deadlock}",
    ],
    var.extra_tags_sql_servers_databases_deadlock,
  )
}

resource "datadog_monitor" "sql_servers_databases_dtu_forecast" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] DTU forecast over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_dtu_forecast == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_dtu_forecast,
    var.notify_sql_servers_databases_dtu_forecast != "" ? var.notify_sql_servers_databases_dtu_forecast : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_dtu_forecast != "" ? var.escalation_message_sql_servers_databases_dtu_forecast : var.escalation_message,
  )

  query = "min(${var.timeframe_sql_servers_databases_dtu_forecast}):(avg:azure.sql_servers_databases.dtu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) >=  ${var.threshold_critical_sql_servers_databases_dtu_forecast}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_dtu_forecast
    critical          = var.threshold_critical_sql_servers_databases_dtu_forecast
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_dtu_forecast
  notify_no_data      = var.notify_no_data_sql_servers_databases_dtu_forecast
  renotify_interval   = 240
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_dtu_forecast",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_dtu_forecast != "" ? var.isprod_sql_servers_databases_dtu_forecast : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_dtu_forecast}",
      "category:${var.category_sql_servers_databases_dtu_forecast}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_dtu_forecast}",
      "irp:${var.irp_sql_servers_databases_dtu_forecast}",
    ],
    var.extra_tags_sql_servers_databases_dtu_forecast,
  )
}

resource "datadog_monitor" "sql_servers_databases_dtu_status" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] DTU usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_dtu_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_dtu_status,
    var.notify_sql_servers_databases_dtu_status != "" ? var.notify_sql_servers_databases_dtu_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_dtu_status != "" ? var.escalation_message_sql_servers_databases_dtu_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_dtu_status}):(avg:azure.sql_servers_databases.dtu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_databases_dtu_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_dtu_status
    critical          = var.threshold_critical_sql_servers_databases_dtu_status
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_dtu_status
  notify_no_data      = var.notify_no_data_sql_servers_databases_dtu_status
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_dtu_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_dtu_status != "" ? var.isprod_sql_servers_databases_dtu_status : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_dtu_status}",
      "category:${var.category_sql_servers_databases_dtu_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_dtu_status}",
      "irp:${var.irp_sql_servers_databases_dtu_status}",
    ],
    var.extra_tags_sql_servers_databases_dtu_status,
  )
}

resource "datadog_monitor" "sql_servers_databases_dwu_forecast" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] DWU datawarehouse usage forecast over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_dwu_forecast == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_dwu_forecast,
    var.notify_sql_servers_databases_dwu_forecast != "" ? var.notify_sql_servers_databases_dwu_forecast : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_dwu_forecast != "" ? var.escalation_message_sql_servers_databases_dwu_forecast : var.escalation_message,
  )

  query = "min(${var.timeframe_sql_servers_databases_dwu_forecast}):(avg:azure.sql_servers_databases.dwu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) >=  ${var.threshold_critical_sql_servers_databases_dwu_forecast}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_dwu_forecast
    critical          = var.threshold_critical_sql_servers_databases_dwu_forecast
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_dwu_forecast
  notify_no_data      = var.notify_no_data_sql_servers_databases_dwu_forecast
  renotify_interval   = 240
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_dwu_forecast",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_dwu_forecast != "" ? var.isprod_sql_servers_databases_dwu_forecast : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_dwu_forecast}",
      "category:${var.category_sql_servers_databases_dwu_forecast}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_dwu_forecast}",
      "irp:${var.irp_sql_servers_databases_dwu_forecast}",
    ],
    var.extra_tags_sql_servers_databases_dwu_forecast,
  )
}

resource "datadog_monitor" "sql_servers_databases_dwu_usage" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] DWU datawarehouse usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_dwu_usage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_dwu_usage,
    var.notify_sql_servers_databases_dwu_usage != "" ? var.notify_sql_servers_databases_dwu_usage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_dwu_usage != "" ? var.escalation_message_sql_servers_databases_dwu_usage : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_dwu_usage}):(avg:azure.sql_servers_databases.dwu_consumption_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_databases_dwu_usage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_dwu_usage
    critical          = var.threshold_critical_sql_servers_databases_dwu_usage
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_dwu_usage
  notify_no_data      = var.notify_no_data_sql_servers_databases_dwu_usage
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_dwu_usage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_dwu_usage != "" ? var.isprod_sql_servers_databases_dwu_usage : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_dwu_usage}",
      "category:${var.category_sql_servers_databases_dwu_usage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_dwu_usage}",
      "irp:${var.irp_sql_servers_databases_dwu_usage}",
    ],
    var.extra_tags_sql_servers_databases_dwu_usage,
  )
}

resource "datadog_monitor" "sql_servers_databases_failedconnection" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] Failed connection rate over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_failedconnection == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_failedconnection,
    var.notify_sql_servers_databases_failedconnection != "" ? var.notify_sql_servers_databases_failedconnection : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_failedconnection != "" ? var.escalation_message_sql_servers_databases_failedconnection : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_failedconnection}):(sum:azure.sql_servers_databases.connection_failed{lbnid:${var.asset_lbnref}} by {name} / (sum:azure.sql_servers_databases.connection_failed{lbnid:${var.asset_lbnref}} by {name} + sum:azure.sql_servers_databases.connection_successful{lbnid:${var.asset_lbnref}} by {name} + ${var.tolerance_rate_sql_servers_databases_failedconnection})) * 100 > ${var.threshold_critical_sql_servers_databases_failedconnection}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_failedconnection
    critical          = var.threshold_critical_sql_servers_databases_failedconnection
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_failedconnection
  notify_no_data      = var.notify_no_data_sql_servers_databases_failedconnection
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_failedconnection",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_failedconnection != "" ? var.isprod_sql_servers_databases_failedconnection : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_failedconnection}",
      "category:${var.category_sql_servers_databases_failedconnection}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_failedconnection}",
      "irp:${var.irp_sql_servers_databases_failedconnection}",
    ],
    var.extra_tags_sql_servers_databases_failedconnection,
  )
}

# Create a new Datadog sql_servers_databases monitor
resource "datadog_monitor" "sql_servers_databases_status" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] - status anormal"
  type  = "query alert"
  count = var.activated_sql_servers_databases_status == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_status,
    var.notify_sql_servers_databases_status != "" ? var.notify_sql_servers_databases_status : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_status != "" ? var.escalation_message_sql_servers_databases_status : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_status}):(avg:azure.sql_servers_databases.status{lbnid:${var.asset_lbnref}}) < ${var.threshold_critical_sql_servers_databases_status}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_status
    critical          = var.threshold_critical_sql_servers_databases_status
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_status
  notify_no_data      = var.notify_no_data_sql_servers_databases_status
  renotify_interval   = 40
  require_full_window = false
  notify_audit        = true
  timeout_h           = 0
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_status",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_status != "" ? var.isprod_sql_servers_databases_status : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_status}",
      "category:${var.category_sql_servers_databases_status}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_status}",
      "irp:${var.irp_sql_servers_databases_status}",
    ],
    var.extra_tags_sql_servers_databases_status,
  )
}

resource "datadog_monitor" "sql_servers_databases_storage_usage" {
  name  = "[sql_servers_databases service][${var.asset_lbnref}] Storage usage over threshold"
  type  = "metric alert"
  count = var.activated_sql_servers_databases_storage_usage == "true" ? 1 : 0
  message = format(
    "%s Notify: %s",
    var.message_sql_servers_databases_storage_usage,
    var.notify_sql_servers_databases_storage_usage != "" ? var.notify_sql_servers_databases_storage_usage : var.notify_to,
  )
  escalation_message = format(
    "%s",
    var.escalation_message_sql_servers_databases_storage_usage != "" ? var.escalation_message_sql_servers_databases_storage_usage : var.escalation_message,
  )

  query = "avg(${var.timeframe_sql_servers_databases_storage_usage}):(avg:azure.sql_servers_databases.storage_percent{lbnid:${var.asset_lbnref}} by {name}) > ${var.threshold_critical_sql_servers_databases_storage_usage}"

  thresholds = {
    critical_recovery = var.threshold_critical_recovery_sql_servers_databases_storage_usage
    critical          = var.threshold_critical_sql_servers_databases_storage_usage
  }

  evaluation_delay    = var.evaluation_delay
  new_host_delay      = var.new_host_delay
  include_tags        = var.include_tags
  no_data_timeframe   = var.no_data_timeframe_sql_servers_databases_storage_usage
  notify_no_data      = var.notify_no_data_sql_servers_databases_storage_usage
  renotify_interval   = 40
  notify_audit        = true
  timeout_h           = 0
  require_full_window = false
  silenced            = {}

  tags = concat(
    [
      "monitor_resource_name:sql_servers_databases_storage_usage",
      "lbnref:${var.asset_lbnref}",
      "template:${var.template}",
      "isprod:${format(
        "%s",
        var.isprod_sql_servers_databases_storage_usage != "" ? var.isprod_sql_servers_databases_storage_usage : var.isprod,
      )}",
      "severity:${var.severity_sql_servers_databases_storage_usage}",
      "category:${var.category_sql_servers_databases_storage_usage}",
      "customer_name:${var.customer_name}",
      "customer_id:${var.customer_id}",
      "team_in_charge:${var.team_in_charge}",
      "type:${var.monitor_type != "" ? var.monitor_type : var.type_sql_servers_databases_storage_usage}",
      "irp:${var.irp_sql_servers_databases_storage_usage}",
    ],
    var.extra_tags_sql_servers_databases_storage_usage,
  )
}

