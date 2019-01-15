terraform {
 backend "gcs" {
   bucket  = "terraform-admin-mike"
   prefix  = "terraform/state"
   project = "terraform-admin-mike"
 }
}
