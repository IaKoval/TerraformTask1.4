resource "datadog_monitor" "image_backoff" {
  name               = "Image Backoff"
  type               = "metric alert"
  query              = "avg(last_5m):sum:kubernetes.container.restart.count{reason:imagebackoff} by {pod} > 0"
  message            = "Container is in image backoff state."
  notify_no_data     = true
  notify_audit       = false
  
  monitor_thresholds {
    critical = 0
  }
  
  renotify_interval  = "10"
}

