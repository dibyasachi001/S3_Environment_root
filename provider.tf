terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.83.1"
    }
  }
}

provider "aws" {
  alias  = "primary_central"
  region = var.source_region
}

locals {
  resolved_destination_region = var.destination_region != "" ? var.destination_region : var.source_region
}

provider "aws" {
  alias  = "secondary_region"
  region = local.resolved_destination_region
  # shared_config_files      = ["/home/dibyasachir/.aws/config"]      # The AWS different account ID's config path for cross region replication (required only for cross-account).
  # shared_credentials_files = ["/home/dibyasachir/.aws/credentials"] # The AWS different account ID's credentials path for cross region replication (required only for cross-account).
  # profile                  = "Dibya"                                # The AWS A/c profile name
  ###################################################################################################  

}