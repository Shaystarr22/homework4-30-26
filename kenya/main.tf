variable "project_id" {
  description = "Your GCP project ID"
  type        = string
}

resource "google_compute_network" "vpc_network" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "local_file" "favourite_food" {
  content  = "My favourite food is tacos.\n"
  filename = "${path.module}/favourite_food.txt"
}
