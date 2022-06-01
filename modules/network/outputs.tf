/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

output "vpc_id" {
  value       = aws_vpc.spoke_vpc.id
  description = "VPC ID used for other modules"
}

output "app_subnet" {
  value       = aws_subnet.app_subnet
  description = "app subnets used for other modules"
}