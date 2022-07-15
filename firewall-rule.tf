resource "google_compute_firewall" "rules" {
  project     = var.project_id
  name        = "my-firewall-rule"
  network     = "vpc-network"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["80", "443", "22"]
  }

  source_ranges = [
    "0.0.0.0/0"
  ]
  
  source_tags = ["foo"]
  target_tags = ["webserver"]
}