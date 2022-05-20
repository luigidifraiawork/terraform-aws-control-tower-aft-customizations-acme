/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.1"
}

provider "aws" {
  alias  = "network_hub"
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::${local.config.network_hub_account_number}:role/AWSAFTExecution"
    # Declaring a session name
    session_name = "network_hub"
  }
  default_tags {
    tags = local.tags
  }
}
