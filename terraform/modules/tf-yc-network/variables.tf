variable "network_zones" {
  default     = (["ru-central1-a", "ru-central1-b", "ru-central1-c"])
  type        = set(string)
  description = "YandexCloud network zones list"
  sensitive   = false
  nullable    = false
}

variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  sensitive   = true
  nullable    = false
}

variable "subnet_id" {
  default     = "e9bglr3c0r3cklccie5m"
  type        = string
  description = "Subnet ID"
  sensitive   = false
  nullable    = false
}

variable "folder_id" {
  default     = "b1g6kb8sqccdk2sg5drr"
  type        = string
  description = "YandexCloud folder ID"
  sensitive   = true
  nullable    = false
}

variable "cloud_id" {
  default     = "b1g3jddf4nv5e9okle7p"
  type        = string
  description = "Yandex Cloud ID"
  sensitive   = true
  nullable    = false
}
