// resource "google_compute_instance" "default" {
//   name         = "tfcloud-test-instance"
//   machine_type = "n2-standard-2"
//   zone         = "us-central1-a"
//   project      = "poc-ciscld-apigx-766888"
//   allow_stopping_for_update = true

//   tags = ["foo", "bar"]

//   boot_disk {
//     initialize_params {
//       image = "debian-cloud/debian-11"
//       labels = {
//         my_label = "value"
//       }
//     }
//   }

//   network_interface {
//     network = google_compute_network.custom-test.name

//     access_config {
//       // Ephemeral public IP
//     }
//   }

// }

// resource "google_compute_network" "custom-test" {
//   name                    = "test-network"
//   auto_create_subnetworks = true
//   project      = "poc-ciscld-apigx-766888"
// }


resource "google_pubsub_topic" "example" {
  count = 3
  name = "example-topic.${count.index}"
  project = "poc-ciscld-apigx-766888"
  message_storage_policy {
    allowed_persistence_regions = [
      "northamerica-northeast1", "us-central1"
    ]
  }

  labels = {
    type = "test"
    purpose = "location-test"
  }
}
