resource "google_compute_instance" "cnd_handson" {
  name         = "cnd-handson"
  machine_type = "c4-standard-4"
  zone         = var.availability_zone

  tags = [var.project_name]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      architecture = "X86_64"
      size = 50
    }
  }
  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }
  }
}