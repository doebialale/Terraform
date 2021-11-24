variable "vpcCidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "PubsubnetCidr" {
    type = string
    default = "10.0.0.0/24"
  
}

variable "PrvtsubnetCidr" {
    type = string
    default = "10.0.1.0/24"
  
}

variable "AZ1" {
    type = string
    default = "us-east-1a"
  
}
variable "AZ2" {
    type = string
    default = "us-east-1b"
  
}