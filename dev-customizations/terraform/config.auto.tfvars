/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

aws_region                = "eu-west-2"
vpc_endpoints             = ["s3"]
centralised_vpc_endpoints = ["ec2", "rds", "sqs", "sns", "ssm", "logs", "ssmmessages", "ec2messages", "autoscaling", "ecs", "athena"]

tags = {
  Product    = "Network_Automation"
  Owner      = "Acme Corporation"
  Project_ID = "12345"
}

env_config = {
  network_hub_account_number = ""
  tgw_route_table_associate  = "dev"
  tgw_route_tables_propagate = ["shared"]
  root_domain                = "network-hub.internal."
}
