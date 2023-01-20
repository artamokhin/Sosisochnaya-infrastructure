terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  # Описание бэкенда хранения состояния
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "terraform-state-aleksandr-artamokhin"
    region   = "ru-central1"
    key      = "terraform.tfstate"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  cloud_id  = "b1g3jddf4nv5e9okle7p"
  folder_id = "***REMOVED***"
  zone      = "ru-central1-a"
}


resource "yandex_compute_instance" "vm-1" {
  name = "chapter5-lesson2-std-012-056"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80qm01ah03dkqb14lc"
    }
  }

  network_interface {
    subnet_id = "e9bglr3c0r3cklccie5m"
    nat       = false
  }

  metadata = {
   user-data = "${file("/home/student/example-01/meta.txt")}"
  }
}


output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}
