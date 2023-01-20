resource "yandex_compute_instance" "vm-1" {
  name = "chapter5-lesson2-std-012-056"
  zone = var.zone
  platform_id = var.platform_id

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd80qm01ah03dkqb14lc"
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = "e9bglr3c0r3cklccie5m"
    nat       = false
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  metadata = {
   user-data = "${file("/home/student/example-01/meta.txt")}"
  }
}
