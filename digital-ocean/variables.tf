variable "ssh_public_key" {
    description = "Public key"
    type = string
    default = "../credentials/mainRecon.pub"
}

variable "do_token" {
    description = "Digital Ocean Api Token"
}

variable "region" {
    description = "Digital Ocean Region"
    default = "nyc3"
}

variable "username" {
    description = "Username"
    type = string
    default = "mainrecon"
}

variable "vps_number" {
    description = "Number of VPS servers"
    type = string
    default = 1
}