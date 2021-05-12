## Terraform-Cisco-ACI

Work in progress

On this page:

main.tf - creates a Physical Domain, Vlan Pool and AAEP on Cisco's sandbox APIC - remote backend is commented out
 
### Use Case Description

Creation and testing of Cisco aci Terraform script

### DevNet Sandbox

Cisco has an 'always on' APIC [here](https://sandboxapicdc.cisco.com/). 

username = 'admin'

password = 'ciscopsdt'

### How to test the software

git clone https://github.com/mrdavehill/Terraform--Cisco-ACI

terraform init

terraform apply

visit DevNet Sandbox and look for tenant AEP_Core, Vlan_Pool_Core and Domain_Core

### Getting help

Hit me up if you have any issues.

### Author

This project was written and is maintained by the following individuals:

* Dave Hill <dave@davehill.org>

