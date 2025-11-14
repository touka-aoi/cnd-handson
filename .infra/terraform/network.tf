resource "google_compute_firewall" "cnd_handson" {
  name    = "cnd-handson-firewall"
  network = "default"

  direction = "INGRESS"

  source_ranges = ["${var.home_IP}/32"]
  target_tags = [var.project_name]

  allow {
    protocol = "tcp"
    ports = [
      "22",
      "80",
      "443",
      "8080",
      "8443",
      "18080",
      "18443",
      "28080",
      "28443",
    ]
  }
}

