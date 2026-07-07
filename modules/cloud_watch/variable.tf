variable "alarm_name" {
  description = "The name of the alarm"
  type        = string
  
}
variable "comparison_operator" {
  description = "The arithmetic operation to use when comparing the specified statistic and threshold"
  type        = string
}
variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  type        = number
}
variable "metric_name" {
  description = "The name for the metric associated with the alarm"
  type        = string
}
variable "namespace" {
  description = "The namespace of the metric associated with the alarm"
  type        = string
}
variable "period" {
  description = "The period in seconds over which the specified statistic is applied"
  type        = number
}
variable "statistic" {
  description = "The statistic to apply to the alarm's associated metric"
  type        = string
}
variable "threshold" {
  description = "The value against which the specified statistic is compared"
  type        = number
}
variable "instance_id" {
  description = "The ID of the EC2 instance to monitor"
  type        = string
  
}