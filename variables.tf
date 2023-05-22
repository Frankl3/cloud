variable "virginia_cidr" {
    description = "CIDR virginia"
    type = string
}


# variable "public_subnet" {
# description = "CIDR private subnet"
# type = string
  
# }

# variable "private_subnet" {
# escription = "CIRD private subnet"
# type = string
# }

variable "subnets" {
    description = "Listas de subnets"
    type = list(string)
  
}


variable "tags" {
    description = "tags del proyecto"
    type = map(string)
  
}


variable "sg_ingress_cidr" {
    description = "CIDR for ingress traffic"
    type = string
  
}

variable "ec2_specs" {
    description = "Parametros de la instancia"
    type = map(string)
  
}


variable "enable_monitori" {
    description = "Habilita el despliegue de un servidor de monitoreo"  
    type = number
}


variable "ingress_ports_list" {
    description = "Lista de puertos de ingress"
    type = list(number)
  
}


variable "access_key" {
  
}

variable "secret_key" {
  
}