
module "S3_Bucket" {
  # source = "./S3_Environment/S3_BUCKET"
  source   = "github.com/dibyasachi001/S3_Environment/S3_BUCKET"

  providers = {
    aws.primary   = aws.primary_central
    aws.secondary = aws.secondary_region
  }

  # SOURCE BUCKET
  source_region     = var.source_region
  source_bucket     = var.prefix_sourcebucket
  source_versioning = var.source_versioning_prefix

  # S3 LIFECYCLE MANAGEMENT(source)
  apply_sourcebucket_lifecycle     = var.apply_prefix_source_bucket_lifecycle
  sourcelifecycle_rule_name        = var.source_unique_lifecycle_rule_name
  sourcelifecycle_rule_prefix_name = var.source_lifecycle_rule_prefix_name

  # Bucket-wide lifecycle settings
  sourcebucket_transition_days          = var.source_bucket_prefix_transition_days
  sourcebucket_transition_storage_class = var.source_bucket_prefix_transition_storage_class
  sourcebucket_expiration_days          = var.source_bucket_prefix_expiration_days

  # Folder-specific lifecycle settings
  sourcefolder                          = var.source_folder_prefix
  sourcefolder_transition_days          = var.source_folder_prefix_transition_days
  sourcefolder_transition_storage_class = var.source_folder_prefix_transition_storage_class
  sourcefolder_expiration_days          = var.source_folder_prefix_expiration_days

  # File-specific lifecycle settings
  sourcefile                          = var.source_file_prefix
  sourcefile_transition_days          = var.source_file_prefix_transition_days
  sourcefile_transition_storage_class = var.source_file_prefix_transition_storage_class
  sourcefile_expiration_days          = var.source_file_prefix_expiration_days

  # Common settings
  source_abort_multipart_days = var.source_abort_prefix_multipart_days



  # DESTINATION BUCKET
  destination_region     = var.destination_region
  destination_bucket     = var.prefix_destinationbucket
  destination_versioning = var.destination_versioning_prefix

  # S3 LIFECYCLE MANAGEMENT(destination)
  apply_destinationbucket_lifecycle     = var.apply_prefix_destination_bucket_lifecycle
  destinationlifecycle_rule_name        = var.destination_unique_lifecycle_rule_name
  destinationlifecycle_rule_prefix_name = var.destination_lifecycle_rule_prefix_name

  # Bucket-wide lifecycle settings
  destinationbucket_transition_days          = var.destination_bucket_prefix_transition_days
  destinationbucket_transition_storage_class = var.destination_bucket_prefix_transition_storage_class
  destinationbucket_expiration_days          = var.destination_bucket_prefix_expiration_days

  # Folder-specific lifecycle settings
  destinationfolder                          = var.destination_folder_prefix
  destinationfolder_transition_days          = var.destination_folder_prefix_transition_days
  destinationfolder_transition_storage_class = var.destination_folder_prefix_transition_storage_class
  destinationfolder_expiration_days          = var.destination_folder_prefix_expiration_days

  # File-specific lifecycle settings
  destinationfile                          = var.destination_file_prefix
  destinationfile_transition_days          = var.destination_file_prefix_transition_days
  destinationfile_transition_storage_class = var.destination_file_prefix_transition_storage_class
  destinationfile_expiration_days          = var.destination_file_prefix_expiration_days

  # Common settings
  destination_abort_multipart_days = var.destination_abort_prefix_multipart_days


  # S3 DATA/OBJECT REPLICATION
  enable_replication        = var.enable_replication
  replication_storage_class = var.replication_storage_class
  is_cross_account          = var.cross_account_replication
  destination_account_id    = var.destination_account_id

}






