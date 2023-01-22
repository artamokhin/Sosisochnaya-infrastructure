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

variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "Boot image ID"
  sensitive = false
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

variable "subnet_id" {
  default     = "e9bglr3c0r3cklccie5m"
  type        = string
  description = "Subnet ID"
  sensitive = false
  nullable = false
}

variable "VM_name" {
  default     = "chapter5-lesson2-std-012-056"
  type        = string
  description = "Name of the VM"
  sensitive = false
  nullable = false
}
