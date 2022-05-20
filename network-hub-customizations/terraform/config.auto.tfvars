/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

environment = "prod"

aws_region    = "eu-west-2"
vpc_endpoints = ["ec2", "rds", "sqs", "sns", "ssm", "logs", "ssmmessages", "ec2messages", "autoscaling", "ecs", "athena"]

tags = {
  Product    = "Network_Automation"
  Owner      = "Acme Corporation"
  Project_ID = "12345"
}

env_config = {
  dev = {
    ipam_cidr        = "10.0.0.0/10"
    tgw_route_tables = ["prod", "dev", "shared"]
    root_domain      = "network-dev.internal"
  }
  test = {
    ipam_cidr        = "10.64.0.0/10"
    tgw_route_tables = ["prod", "dev", "shared"]
    root_domain      = "network-test.internal"
  }
  preprod = {
    ipam_cidr        = "10.128.0.0/10"
    tgw_route_tables = ["prod", "dev", "shared"]
    root_domain      = "network-preprod.internal"
  }
  prod = {
    ipam_cidr        = "10.192.0.0/10"
    tgw_route_tables = ["prod", "dev", "shared"]
    root_domain      = "network-prod.internal"
  }
}
