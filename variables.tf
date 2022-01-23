variable "application_object_id" {
  type        = string
  description = "The object ID of the application for which this password should be created."
}

variable "display_name" {
  type        = string
  description = "A display name for the password."
  default     = null
}

variable "end_date" {
  type        = string
  description = "The end date until which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z)."
  default     = null
}

variable "end_date_relative" {
  type        = string
  description = "A relative duration for which the password is valid until, for example 240h (10 days) or 2400h30m."
  default     = null
}

variable "rotate_when_changed" {
  type        = map(string)
  description = "A map of arbitrary key/value pairs that will force recreation of the password when they change, enabling password rotation based on external conditions such as a rotating timestamp."
  default     = null
}

variable "start_date" {
  type        = string
  description = "The start date from which the password is valid, formatted as an RFC3339 date string (e.g. 2018-01-01T01:02:03Z). If this isn't specified, the current date is used."
  default     = null
}