module "shared_services_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "awsadmin+sharedservicesaccount@acmecorp.com"
    AccountName  = "Shared Services"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Shared Services"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Shared Services (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "awsadmin+sharedservicesaccount@acmecorp.com"
    SSOUserFirstName = "Shared Services"
    SSOUserLastName  = "Account"
  }

  change_management_parameters = {
    change_requested_by = "Acme Corporation"
    change_reason       = "Standard account vending request"
  }

  account_customizations_name = "shared-services-customizations"
}

module "network_hub_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "awsadmin+networkhubaccount@acmecorp.com"
    AccountName  = "Network Hub"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Network Hub"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Network Hub (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "awsadmin+networkhubaccount@acmecorp.com"
    SSOUserFirstName = "Network Hub"
    SSOUserLastName  = "Account"
  }

  change_management_parameters = {
    change_requested_by = "Acme Corporation"
    change_reason       = "Standard account vending request"
  }

  account_customizations_name = "network-hub-customizations"
}

module "dev_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "awsadmin+devaccount@acmecorp.com"
    AccountName  = "Dev"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Development"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Development (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "awsadmin+devaccount@acmecorp.com"
    SSOUserFirstName = "Development"
    SSOUserLastName  = "Account"
  }

  change_management_parameters = {
    change_requested_by = "Acme Corporation"
    change_reason       = "Standard account vending request"
  }

  account_customizations_name = "dev-customizations"
}

module "prod_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "awsadmin+prodaccount@acmecorp.com"
    AccountName  = "Prod"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Production"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Production (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "awsadmin+prodaccount@acmecorp.com"
    SSOUserFirstName = "Production"
    SSOUserLastName  = "Account"
  }

  change_management_parameters = {
    change_requested_by = "Acme Corporation"
    change_reason       = "Standard account vending request"
  }

  account_customizations_name = "prod-customizations"
}
