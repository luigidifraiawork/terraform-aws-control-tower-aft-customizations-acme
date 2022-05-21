/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

variable "env_config" {
  description = "Object for environment configuration"
  type = object({
    network_hub_account_number = string
    tgw_route_table_associate  = string
    tgw_route_tables_propagate = list(string)
    root_domain                = string
  })
}

variable "aws_region" {
  description = "AWS region being deployed to"
  type        = string
}

variable "vpc_endpoints" {
  description = "Which local VPC endpoints to deploy"
  type        = list(string)
}

variable "centralised_vpc_endpoints" {
  description = "Which centralised VPC endpoints to consume"
  type        = list(string)
}

variable "tags" {
  description = "Default tags to apply to all resources"
  type        = map(string)
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "spoke"
}

variable "az_count" {
  description = "Number of availability zones"
  type        = number
  default     = 3
}
