variable "env" {}
variable "projectid" {}

variable "bq_dataset" {
    description = "Dataset try"
    default     = "datasetinfo"
}

variable "bq_info_table" {
  description = "This test only"
  default     = "info"
}
