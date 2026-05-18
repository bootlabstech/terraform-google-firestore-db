data "google_project" "this" {
  project_id = var.project_id
}

# IAM binding for Firestore service agent on existing KMS key
# resource "google_kms_crypto_key_iam_binding" "firestore_cmek_keyuser" {
#   crypto_key_id = var.kms_crypto_key_id
#   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"

#   members = [
#     "serviceAccount:service-${data.google_project.this.number}@gcp-sa-firestore.iam.gserviceaccount.com"
#   ]
# }

# Firestore (Datastore mode) with CMEK
resource "google_firestore_database" "datastore" {
  project     = var.project_id
  name        = var.name
  location_id = var.firestore_location
  type        = var.type
  database_edition = var.database_edition
  point_in_time_recovery_enablement = var.point_in_time_recovery_enablement
  delete_protection_state = var.delete_protection_state

#   cmek_config {
#     kms_key_name = var.kms_crypto_key_id
#   }

#   depends_on = [
#     google_kms_crypto_key_iam_binding.firestore_cmek_keyuser
#   ]
}