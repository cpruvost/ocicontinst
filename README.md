# Terraform Automation on Oracle Cloud : Create x Container Instances (private network) and a Loab Balancer (public network) to access them

This project has been designed to run with Oracle OCI Stacks Resource Manager. Nevertheless you can use it on another place but you have to uncomment some security variables needed outside of OCI Stacks Resource Manager. 

## Prerequisites

Before Starting you need to create a Secret in Oracle OCI Vault for being able to connect to the OCI Registry where your docker images for Container Instances are stored.

1) Create the secret. It is a JSON String like below : 

{
"username": "charles-foster-kane",
"password": "rosebud"
} 

2) Create a Dynamic Group for Container Instance in your compratment
   
"Any {resource.type = 'computecontainerinstance', resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaax6vcsmyeticnpfvvixqk5lyqgihqbjvhcxfakuruoyv4dr4utq7q'}"

3) Create a Policy to allow Container Instance read Secret

allow dynamic-group <dynamic-group-name> to read secret-bundles in tenancy

## Create the Stack

This project consider that your network configuration is done. It means : 
- VCN is created with a private subnet and a public subnet
- The security list of the public subnet has an ingress rule for the load balancer port
- The security list of the private subnet has an ingress rule for the container instances port

You can look at the variables and see : 
- Some of the variables have default values than can be updated by yourself or not as Stack Ressource Manager Variables
- Some other variables have no default value and are mandatory so you must know them.
  - compartment_ocid
  - region
  - private_subnet_ocid
  - public_subnet_ocid
  - availability_domain (You can use OCLI CLI to get it : oci iam availability-domain list --profile EMEAFRANC)
  - ci_image_url
  - ci_registry_secret (ocid)

## Scale or Autoscale

Very simple just use this variable : ci_count (= number of container instances)

For autoscaling we need to use two components : 

- an OCI Alarm that will for ex trigger a notification when the average cpu of the Container Instances are > value
- a function that will run due to the notification and that will use OCI SDK to update the variable ci_count to autoscale up and down.

What is nice is that each time you autoscale then you have a log report in Oracle OCI Stacks Resource Manager and so the monitoring is simple !!!

You may find these two components in another github report that is in construction for the moment.

