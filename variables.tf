variable "project_id" {
  description = "GCP project ID where Firestore (Datastore mode) will be created"
  type        = string
}

# variable "region" {
#   description = "Default provider region (not used by Firestore but required by provider)"
#   type        = string
# }

variable "name" {
  type        = string
  description = "Name of the Firestore database. Use '(default)' for Datastore mode; custom names are supported only for Firestore Native."
}

variable "type" {
  type        = string
  default     = "FIRESTORE_NATIVE"
  description = "Firestore database mode. Use FIRESTORE_NATIVE for Native or MongoDB compatibility; use DATASTORE_MODE for Datastore compatibility."
}

variable "database_edition" {
  type        = string
  default     = "STANDARD"
  description = "Firestore database edition. STANDARD is required for MongoDB compatibility; ENTERPRISE provides higher isolation and throughput but does not support MongoDB or Datastore compatibility."
}

variable "point_in_time_recovery_enablement" {
  type        = string
  default     = "POINT_IN_TIME_RECOVERY_DISABLED"
  description = "Controls Point-in-Time Recovery (PITR) for Firestore Native databases. Enables recovery to a previous timestamp within the retention window."
}

variable "delete_protection_state" {
  type        = string
  default     = "DELETE_PROTECTION_DISABLED"
  description = "Controls deletion protection for the Firestore database. When enabled, the database cannot be deleted until protection is explicitly disabled."
}

variable "firestore_location" {
  description = "Firestore / Datastore location (e.g., nam5, us-central, europe-west)"
  type        = string
}

# variable "kms_crypto_key_id" {
#   description = "Full resource ID of existing KMS crypto key used for CMEK"
#   type        = string
# }
