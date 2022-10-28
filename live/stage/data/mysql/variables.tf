# ----------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ----------------------------------------------------------------------------------
variable "db_username" {
  description = "The username for the master DB user."
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the master DB user."
  type        = string
  sensitive   = true
}

# ----------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ----------------------------------------------------------------------------------

variable "db_name" {
  description = "(Optional) The name to use for the DB."
  type        = string
  default     = "example_database_staging"
}
