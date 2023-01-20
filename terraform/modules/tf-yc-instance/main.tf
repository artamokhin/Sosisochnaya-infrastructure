resource "yandex_compute_instance" "vm-1" {
  name = var.VM_name
  zone = var.zone
  platform_id = var.platform_id

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = false
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  metadata = {
   user-data = "${file("/home/student/example-01/meta.txt")}"
  }
}
