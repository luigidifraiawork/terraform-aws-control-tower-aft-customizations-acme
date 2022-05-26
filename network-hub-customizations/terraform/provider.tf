/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.4.0" # required for https://github.com/hashicorp/terraform-provider-aws/pull/23427
    }
  }
}
