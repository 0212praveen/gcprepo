provider "google" {
  project = "fiery-bit-420221"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name          = "my-praveen-bucket-name"
  location      = "US"
  force_destroy = true

  versioning {
    enabled = true
  }

  logging {
    log_bucket = "logs_bucket"
  }
}
