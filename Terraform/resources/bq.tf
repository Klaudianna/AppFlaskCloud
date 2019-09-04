resource "google_bigquery_dataset" "bq_dataset" {
  dataset_id                    = "${var.bq_dataset}"
  project                       = "${var.projectid}"
  description                   = "This example of dataset"
  
  labels {
    env = "${var.env}"
  }
  
  access {
    role      = "OWNER"
    group_by_email = "klaudianna.pietrzyk@gmail.com"
  }

 
resource "google_bigquery_table" "info" {
  dataset_id                     = "${google_bigquery_dataset.bq_dataset.dataset_id}"
  table_id                       = "${var.info}"         
  project                        = "${var.projectid}"

  labels {
    env = "${var.env}"
  }
  schema = "${file("${path.module}/bq-schema-info.json")}"
  } 

  
}
