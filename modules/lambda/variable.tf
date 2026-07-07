variable "function_name" {
  description = "The name of the Lambda function."
  type        = string
  
}
variable "runtime" {
  description = "The runtime environment for the Lambda function."
  type        = string
}
variable "Environment" {
  description = "The environment for the Lambda function."
  type        = string
}
variable "Application" {
  description = "The application name for the Lambda function."
  type        = string
}