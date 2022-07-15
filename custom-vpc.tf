resource "google_compute_network" "vpc_network" {
  name = "vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnets" {
  for_each = var.regions
  name          = "${var.project}-subnet-${each.value}"
  region        = each.value
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = var.subnet_cidrs[each.value]
}


