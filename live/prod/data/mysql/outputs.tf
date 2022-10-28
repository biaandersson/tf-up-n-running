#----------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------
variable "db_username" {
  description = "The username for the master DB user."
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the master DB user. Note that this may show up in logs, and it will be stored in the state file."
  type        = string
  sensitive   = true
}


# ---------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------

variable "db_name" {
  description = "The name of the database to create when the DB instance is created."
  type        = string
  default     = "example_database_prod"
}
