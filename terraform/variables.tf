variable "cloud_id" {
  default     = "b1g3jddf4nv5e9okle7p"
  type        = string
  description = "Yandex Cloud ID"
  sensitive = true
  nullable = false
} 

variable "folder_id" {
  default     = "***REMOVED***"
  type        = string
  description = "YandexCloud folder ID"
  sensitive = true
  nullable = false
}

variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  sensitive = true
  nullable = false
}

variable "subnet_id" {
  default     = "e9bglr3c0r3cklccie5m"
  type        = string
  description = "Subnet ID"
  sensitive = false
  nullable = false
}
