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

variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "Boot image ID"
  sensitive = false
  nullable = false
}
