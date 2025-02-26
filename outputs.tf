# BUCKET 
output "SourceBucketname" {
  description = "The name of the created S3 bucket."
  value       = module.S3_Bucket.SourceBucket_name
}

output "source_bucket_versioning_status" {
  description = "Versioning status of the source bucket"
  value       = module.S3_Bucket.source_versioning_status
}

output "source_bucket_arn" {
  description = "Amazon Resource Names that is uniquely identify AWS resources."
  value       = module.S3_Bucket.sourcebucket_arn
}

output "DestinationBucketname" {
  description = "The name of the created S3 bucket."
  value       = module.S3_Bucket.DestinationBucket_name
}

output "destination_bucket_versioning_status" {
  description = "Versioning status of the destination bucket"
  value       = module.S3_Bucket.destination_versioning_status
}

output "destination_bucket_arn" {
  description = "Amazon Resource Names that is uniquely identify AWS resources."
  value       = module.S3_Bucket.destinationbucket_arn
}

# LIFE CYCLE MANAGEMENT(Source Bucket )
output "source_lifecycle_configuration_id" {
  description = "Lifecycle configuration ID for the source S3 bucket"
  value       = module.S3_Bucket.sourcelifecycle_configuration_id
}

# LIFE CYCLE MANAGEMENT(Destination Bucket)
output "destination_lifecycle_configuration_id" {
  description = "Lifecycle configuration ID for the destination S3 bucket"
  value       = module.S3_Bucket.destinationlifecycle_configuration_id
}

# S3 DATA REPLICATION
output "replication_role_arn" {
  description = "IAM Role ARN for S3 Replication"
  value       = module.S3_Bucket.replication_role_arn
}

output "replication_policy_arn" {
  description = "IAM Policy ARN for S3 Replication"
  value       = module.S3_Bucket.replication_policy_arn
}

output "replication_configuration_id" {
  description = "ID of the replication configuration"
  value       = module.S3_Bucket.replication_configuration_id
}




















