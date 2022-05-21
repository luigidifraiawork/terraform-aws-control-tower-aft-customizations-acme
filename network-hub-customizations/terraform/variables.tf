/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

variable "env_config" {
  description = "Object for environment configuration"
  type = object({
    ipam_cidr        = string
    tgw_route_tables = list(string)
    root_domain      = string
  })
}

variable "aws_region" {
  description = "AWS region being deployed to"
  type        = string
}

variable "vpc_endpoints" {
  description = "Which VPC endpoints to use"
  type        = list(string)
}

variable "tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
}
