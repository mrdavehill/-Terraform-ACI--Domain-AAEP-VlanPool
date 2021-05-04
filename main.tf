# Terraform state will be stored in S3
#terraform {
#  backend "s3" {
#    bucket = "daves-demo-terraform-backend"
#    key    = "terraform.tfstate"
#    region = "eu-west-1"
#  }
#}

provider "aci" {
  # cisco-aci user name
  username = "admin"
  # cisco-aci password
  password = "ciscopsdt"
  # cisco-aci url
  url      = "https://sandboxapicdc.cisco.com"
  insecure = true
}

resource "aci_vlan_pool" "main" {
  alloc_mode  = "static"
  name        = "Vlan_Pool_Core"
  description = "Created using Terraform by Dave"
}

resource "aci_attachable_access_entity_profile" "main" {
  depends_on = [aci_physical_domain.main]
  name        = "AEP_Core"
  description = "Created using Terraform by Dave"
 relation_infra_rs_dom_p = [aci_physical_domain.main.id]
}

#resource "aci_physical_domain" "main" {
#  name                   = "Domain_Core"
#  description = "Created using Terraform"
#}


resource "aci_physical_domain" "main" {
  depends_on = [aci_vlan_pool.main]
  description = "Created using Terraform by Dave"
  name  = "Domain_Core"
  relation_infra_rs_vlan_ns = aci_vlan_pool.main.id
}