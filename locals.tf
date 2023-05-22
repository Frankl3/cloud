locals {
  sufix = "${var.tags.projets}-${var.tags.env}-${var.tags.region}" # recursos-cerberus-prod-region
}


resource "random_string" "sufijo_s3" {
  length = 8
  special = false
  upper = false
  
}




locals {
  s3_sufix = "${var.tags.projets} -${random_string.sufijo_s3.id}"
}