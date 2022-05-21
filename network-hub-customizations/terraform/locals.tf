/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

locals {
  tags = var.tags

  aws_org_arn             = data.aws_organizations_organization.main.arn
  availability_zone_names = data.aws_availability_zones.available.names
  endpoints               = { for e in var.vpc_endpoints : "com.amazonaws.${var.aws_region}.${e}" => "${e}.${var.aws_region}.amazonaws.com" }
}
