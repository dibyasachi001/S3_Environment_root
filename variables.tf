# REGION   
variable "source_region" {
  description = "Primary aws region for the resources bucket"
  type        = string
}

variable "destination_region" {
  description = "Secondary aws region for the destination bucket"
  type        = string
}

# S3-BUCKET 
variable "prefix_sourcebucket" {
  description = "source bucket name"
  type        = string
}

variable "prefix_destinationbucket" {
  description = "destination bucket name"
  type        = string
}

# VERSIONING
variable "source_versioning_prefix" {
  description = "Enable versioning on the source bucket."
  type        = bool
  # default     = false
}

variable "destination_versioning_prefix" {
  description = "Enable versioning on the destination bucket."
  type        = bool
  # default     = false
}

###################################################################################################
# LIFE CYCLE MANAGEMENT(source)
variable "apply_prefix_source_bucket_lifecycle" {
  description = "Whether to apply lifecycle management to the entire bucket"
  type        = bool
  # default     = true
}

variable "source_unique_lifecycle_rule_name" {
  description = "Name of lifecycle rule"
  type        = string
}

variable "source_lifecycle_rule_prefix_name" {
  description = "Prefix name of lifecycle rule"
  type        = string
}

# # Bucket-wide settings###########################
variable "source_bucket_prefix_transition_days" {
  description = "Number of days after object creation to transition bucket-wide objects"
  type        = number
  # default     = 30
}

variable "source_bucket_prefix_transition_storage_class" {
  description = "Storage class for bucket-wide transition"
  type        = string
  # default     = "STANDARD_IA"
}

variable "source_bucket_prefix_expiration_days" {
  description = "Number of days after object creation to expire bucket-wide objects"
  type        = number
  # default     = 365
}

# Folder-specific settings#######################
variable "source_folder_prefix" {
  description = "Prefix for the specific folder to apply lifecycle policies"
  type        = string
  # default     = ""
}

variable "source_folder_prefix_transition_days" {
  description = "Number of days to transition folder-specific objects"
  type        = number
  # default     = 30
}

variable "source_folder_prefix_transition_storage_class" {
  description = "Storage class for folder-specific transition"
  type        = string
  # default     = "GLACIER"
}

variable "source_folder_prefix_expiration_days" {
  description = "Number of days to expire folder-specific objects"
  type        = number
  # default     = 365
}

# File-specific settings#########################
variable "source_file_prefix" {
  description = "Specific file key to apply lifecycle policies"
  type        = string
  # default     = ""
}

variable "source_file_prefix_transition_days" {
  description = "Number of days to transition file-specific objects"
  type        = number
  # default     = 60
}

variable "source_file_prefix_transition_storage_class" {
  description = "Storage class for file-specific transition"
  type        = string
  # default     = "DEEP_ARCHIVE"
}

variable "source_file_prefix_expiration_days" {
  description = "Number of days to expire file-specific objects"
  type        = number
  # default     = 730
}

# Common settings################################
variable "source_abort_prefix_multipart_days" {
  description = "Number of days to wait before cleaning up incomplete multipart uploads"
  type        = number
  # default     = 7
}

###################################################################################################
# LIFE CYCLE MANAGEMENT(destination)
variable "apply_prefix_destination_bucket_lifecycle" {
  description = "Whether to apply lifecycle management to the entire bucket"
  type        = bool
  # default     = true
}

variable "destination_unique_lifecycle_rule_name" {
  description = "Name of lifecycle rule"
  type        = string
}

variable "destination_lifecycle_rule_prefix_name" {
  description = "Name of lifecycle rule"
  type        = string
}

# Bucket-wide settings###########################
variable "destination_bucket_prefix_transition_days" {
  description = "Number of days after object creation to transition bucket-wide objects"
  type        = number
  # default     = 30
}

variable "destination_bucket_prefix_transition_storage_class" {
  description = "Storage class for bucket-wide transition"
  type        = string
  # default     = "STANDARD_IA"
}

variable "destination_bucket_prefix_expiration_days" {
  description = "Number of days after object creation to expire bucket-wide objects"
  type        = number
  # default     = 365
}

# Folder-specific settings#######################
variable "destination_folder_prefix" {
  description = "Prefix for the specific folder to apply lifecycle policies"
  type        = string
  # default     = ""
}

variable "destination_folder_prefix_transition_days" {
  description = "Number of days to transition folder-specific objects"
  type        = number
  # default     = 30
}

variable "destination_folder_prefix_transition_storage_class" {
  description = "Storage class for folder-specific transition"
  type        = string
  # default     = "GLACIER"
}

variable "destination_folder_prefix_expiration_days" {
  description = "Number of days to expire folder-specific objects"
  type        = number
  # default     = 365
}

# File-specific settings#########################
variable "destination_file_prefix" {
  description = "Specific file key to apply lifecycle policies"
  type        = string
  # default     = ""
}

variable "destination_file_prefix_transition_days" {
  description = "Number of days to transition file-specific objects"
  type        = number
  # default     = 60
}

variable "destination_file_prefix_transition_storage_class" {
  description = "Storage class for file-specific transition"
  type        = string
  # default     = "DEEP_ARCHIVE"
}

variable "destination_file_prefix_expiration_days" {
  description = "Number of days to expire file-specific objects"
  type        = number
  # default     = 730
}

# Common settings################################
variable "destination_abort_prefix_multipart_days" {
  description = "Number of days to wait before cleaning up incomplete multipart uploads"
  type        = number
  # default     = 7
}

############################################################################
# S3 DATA REPLICATION
variable "enable_replication" {
  description = "Enable S3 replication (true/false)"
  type        = bool
}

variable "replication_storage_class" {
  description = "Storage class for replicated objects"
  type        = string
  #default     = "STANDARD"
}

variable "cross_account_replication" {
  description = "Enable cross-account replication"
  type        = bool
  #default     = false
}

variable "destination_account_id" {
  description = "Destination AWS account ID for cross-account replication"
  type        = string
}






















# # IAM ROLE FOR S3 REPLICATION####################
# variable "replication_role_name" {
#   description = "IAM Role name for S3 replication"
#   type        = string
# }

# # REPLICATION CONFIGURATION######################
# variable "enable_s3_replication" {
#   description = "Enable S3 bucket replication"
#   type        = bool
# }

# variable "replication_storage_class" {
#   description = "Storage class for replicated objects"
#   type        = string
# }

# variable "is_cross_account_replication" {
#   description = "Set to true if replication is cross-account"
#   type        = bool
#   #default     = false
# }

# variable "existing_object_prefix_replication" {
#   description = "Replicate existing objects in the source bucket according to the rule configurations"
#   type        = bool
# }

# variable "enable_delete_marker_prefix_replication" {
#   description = "Set to true if delete marker replication is required"
#   type        = bool
# }

###################################################################################################









