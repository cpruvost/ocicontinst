### These information are needed only outside of OCI Terraform Stack Manager
# variable "tenancy_ocid" {
#     description = "The OCI Tenancy ocid"
#     type        = string
# }

# variable "user_ocid" {
#     description = "The OCI User ocid"
#     type        = string
# }

# variable "fingerprint" {
#     description = "The Fingerprint of the OCI API Key"
#     type        = string
# }

# variable "private_key_path" {
#     description = "The Path of the OCI API Key"
#     type        = string
# }

variable "region" {
    description = "The OCI region"
    type        = string
}

variable "compartment_ocid" {
    description = "The OCI Compartment ocid"
    type        = string
}

variable "private_subnet_ocid" {
    description = "The OCI Private Subnet ocid"
    type        = string
}

variable "public_subnet_ocid" {
    description = "The OCI Public Subnet ocid"
    type        = string
}

variable "availability_domain" {
    description = "The OCI Availability Domain"
    type        = string
}

variable "ci_name" {
    description = "The OCI Container Instance Name"
    type        = string
    default     = "CI_NAME"
}

variable "ci_restart_policy" {
    description = "The OCI Container Instance Retsrat Policy"
    type        = string
    default     = "ALWAYS"
}

variable "ci_state" {
    description = "The OCI Container Instance State"
    type        = string
    default     = "ACTIVE"
}

variable "ci_shape" {
    description = "The OCI Container Instance Shape"
    type        = string
    default     = "CI.Standard.E4.Flex"
}

variable "ci_ocpus" {
    description = "The OCI Container Instance Ocpu Number"
    type        = number
    default     = 1
}

variable "ci_memory" {
    description = "The OCI Container Instance Memory GB Number"
    type        = number
    default     = 2
}

variable "ci_container_name" {
    description = "The OCI Container Name"
    type        = string
    default     = "CI_CONTAINER_NAME"
}

variable "ci_image_url" {
    description = "The OCI Container Image Url"
    type        = string
}

variable "ci_registry_secret" {
    description = "The OCI Vault Secret Id with username and password of OCI registry"
    type        = string
}

variable "ci_count" {
    description = "The OCI Container Instance Count Number"
    type        = number
    default     = 1
}

variable "load_balancer_shape_details_maximum_bandwidth_in_mbps" {
    description = "The OCI LB Max Bandwith"  
    type        = number
    default = 100
}

variable "load_balancer_shape_details_minimum_bandwidth_in_mbps" {
    description = "The OCI LB Max Bandwith"  
    type = number
    default = 10
}

variable "lb_name" {
    description = "The OCI LB Name"
    type        = string
    default     = "CI_FLEX_LB"
}

variable "lb_health_port" {
    description = "The OCI LB Health Port"
    type        = string
    default     = "8000"
}

variable "lb_checker_health_port" {
    description = "The OCI LB Health Checker Port"
    type        = string
    default     = "8000"
}

variable "lb_checker_url_path" {
    description = "The OCI LB Health Checker URL"
    type        = string
    default     = "/actuator/health"
}

variable "lb_listener_port" {
    description = "The OCI LB Listener Port"
    type        = number
    default     = 8000
}

variable "lb_backend_port" {
    description = "The OCI LB Listener Port"
    type        = number
    default     = 8000
}

