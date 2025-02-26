# REGION   
source_region      = "ap-southeast-2"
destination_region = "ap-southeast-1"
# S3-BUCKET
prefix_sourcebucket           = "bucket01"
prefix_destinationbucket      = "bucket02"
source_versioning_prefix      = true
destination_versioning_prefix = true


# LIFE CYCLE MANAGEMENT(source)##################################################################
apply_prefix_source_bucket_lifecycle = true # Enter(true/false) for apply lifecycle management to the entire bucket.

source_unique_lifecycle_rule_name = "source_lifecycle1" # Lifecycle rule name but should be unique.
source_lifecycle_rule_prefix_name = "source_lifecycle1"

# Bucket-wide settings
source_bucket_prefix_transition_days          = 30        # Enter number of days after object creation to transition bucket-wide objects.
source_bucket_prefix_transition_storage_class = "GLACIER" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for bucket-wide transition otherwise left empty.
source_bucket_prefix_expiration_days          = 365       # Enter number of days after object creation to expire bucket-wide objects.

# Folder-specific settings
source_folder_prefix                          = "" # Enter prefix for the specific folder to apply lifecycle policies otherwise left empty.
source_folder_prefix_transition_days          = 0  # Enter number of days to transition folder-specific objects.
source_folder_prefix_transition_storage_class = "" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for folder-specific transition otherwise left empty.
source_folder_prefix_expiration_days          = 0  # Enter number of days to expire folder-specific objects.

# File-specific settings
source_file_prefix                          = ""           # Enter prefix for the Specific file to apply lifecycle policies otherwise left empty.
source_file_prefix_transition_days          = 30           # Enter number of days to transition file-specific objects.
source_file_prefix_transition_storage_class = "ONEZONE_IA" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for file-specific transition otherwise left empty.
source_file_prefix_expiration_days          = 90           # Enter number of days to expire file-specific objects.

# Common abort multipart settings
source_abort_prefix_multipart_days = 7 # Enter number of days to wait before cleaning up incomplete multipart uploads.


# # LIFE CYCLE MANAGEMENT(destination)#############################################################
apply_prefix_destination_bucket_lifecycle = true # Enter(true/false) for apply lifecycle management to the entire bucket. 

destination_unique_lifecycle_rule_name = "destination_lifecycle1" # Lifecycle rule name but should be unique.
destination_lifecycle_rule_prefix_name = "destination_lifecycle1"

# Bucket-wide settings
destination_bucket_prefix_transition_days          = 30        # Enter number of days after object creation to transition bucket-wide objects.
destination_bucket_prefix_transition_storage_class = "GLACIER" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for bucket-wide transition otherwise left empty.
destination_bucket_prefix_expiration_days          = 365       # Enter number of days after object creation to expire bucket-wide objects.

# Folder-specific settings
destination_folder_prefix                          = "" # Enter prefix for the specific folder to apply lifecycle policies otherwise left empty.
destination_folder_prefix_transition_days          = 0  # Enter number of days to transition folder-specific objects.
destination_folder_prefix_transition_storage_class = "" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for folder-specific transition otherwise left empty.
destination_folder_prefix_expiration_days          = 0  # Enter number of days to expire folder-specific objects.

# File-specific settings
destination_file_prefix                          = ""           # Enter prefix for the Specific file to apply lifecycle policies otherwise left empty.
destination_file_prefix_transition_days          = 30           # Enter number of days to transition file-specific objects.
destination_file_prefix_transition_storage_class = "ONEZONE_IA" # Enter storage class name out of(GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR) for file-specific transition otherwise left empty.
destination_file_prefix_expiration_days          = 90           # Enter number of days to expire file-specific objects.

# Common abort multipart settings
destination_abort_prefix_multipart_days = 7 # Enter number of days to wait before cleaning up incomplete multipart uploads.

###################################################################################################
# S3 DATA REPLICATION
enable_replication        = true
replication_storage_class = "GLACIER" # Enter Storage class for replicated objects[GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR].

# For same-account replication
cross_account_replication = false
destination_account_id    = null

# # For cross-account replication
# cross_account_replication = true
# destination_account_id    = "851725486428" # Replace with actual 12-digit Destination AWS account ID for cross-account replication only.


###################################################################################################