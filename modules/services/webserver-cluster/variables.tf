# -----------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# -----------------------------------------------------------------------------------
variable "cluster_name" {
  description = "The name of the cluster resource."
  type        = string
}

variable "db_remote_state_bucket" {
  description = "The S3 bucket name for the remote state of the database."
  type        = string
}

variable "db_remote_state_key" {
  description = "The S3 key name for the remote state of the database."
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance to run(e.g. t2.micro)."
  type        = string
}

variable "min_size" {
  description = "The minimum number of instances to run."
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances to run."
  type        = number
}


# -------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
#------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests."
  type        = number
  default     = 8080
}

variable "region" {
  description = "The default region ~> defaults to Stockholm"
  type        = string
  default     = "eu-north-1"
}
