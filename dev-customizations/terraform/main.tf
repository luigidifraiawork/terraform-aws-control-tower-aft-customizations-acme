/* Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
   SPDX-License-Identifier: MIT-0 */

module "network" {
  source                     = "./modules/network"
  az_names                   = local.availability_zone_names
  tgw                        = data.aws_ec2_transit_gateway.org_env.id
  interface_endpoints        = local.endpoints
  tgw_route_table            = local.tgw_route_table
  tgw_association            = data.aws_ec2_transit_gateway_route_table.associate.id
  tags                       = local.tags
  network_hub_account_number = var.env_config.network_hub_account_number
  aws_region                 = var.aws_region
  vpc_name                   = var.vpc_name
}

module "dns" {
  source                     = "./modules/dns"
  centralised_vpc_endpoints  = local.centralised_endpoints
  vpc_id                     = module.network.vpc_id
  root_domain                = var.env_config.root_domain
  tags                       = local.tags
  network_hub_account_number = var.env_config.network_hub_account_number
  aws_region                 = var.aws_region
}
