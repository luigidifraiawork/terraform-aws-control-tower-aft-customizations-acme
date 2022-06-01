/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

variable "org_arn" {
  description = "The ARN of the AWS Organization this account belongs to"
  type        = string
}

variable "cidr" {
  description = "Corporate CIDR range for use with blackholing traffic between production and development environments"
  type        = string
}

variable "az_names" {
  description = "A list of the Availability Zone names available to the account"
  type        = list(string)
}

variable "interface_endpoints" {
  description = "Object representing the region and services to create interface endpoints for"
  type        = map(string)
}

variable "org_ipam_pool" {
  description = "IPAM pool ID to allocate CIDR space"
  type        = string
}

variable "tgw_route_tables" {
  description = "TGW route tables for VPC association and propagation"
  type        = map(string)
}

variable "tgw" {
  description = "TGW ID for VPC attachments"
  type        = string
}

variable "root_domain" {
  description = "Root domain for private hosted zone delegation"
  type        = string
}

variable "kms_key_id" {
  description = "VPC Flow Logs KMS key to encrypt logs"
  type        = string
}

variable "iam_role_arn" {
  description = "IAM role to allow VPC Flow Logs to write to CloudWatch"
  type        = string
}
