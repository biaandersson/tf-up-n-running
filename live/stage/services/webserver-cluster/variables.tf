# ----------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------------------------------------------

variable "db_remote_state_bucket" {
  description = "The S3 bucket name for the remote state of the MySQL database."
  type        = string
}

variable "db_remote_state_key" {
  description = "The S3 key name for the remote state of the MySQL database."
  type        = string
}

# ----------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ----------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "webservers-staging"
}
