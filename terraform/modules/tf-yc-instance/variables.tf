variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  sensitive = true
  nullable = false
}

variable "platform_id" {
  default     = "standard-v1"
  type        = string
  description = "Yandex Compute Cloud platform variant"
  sensitive = true
  nullable = false
}

variable "disk_size" {
  default     = "30"
  type        = string
  description = "YandexCloud instance bootable disk size"
  sensitive = false
  nullable = false
}

variable "preemptible" {
  default     = "false"
  type        = bool
  description = "True for short-lived compute instances"
  sensitive = true
  nullable = false
}
