variable "instancias" {
    description = "Nombre de las instancias"
    type = set(string)
    default = ["apache"]

}
  
 
 
 resource "aws_instance" "Public_instancia" {
     for_each = var.instancias
     ami = var.ec2_specs.ami
     instance_type = var.ec2_specs.instance_type
     subnet_id = aws_subnet.public_subnet.id
     key_name = data.aws_key_pair.key.key_name
     vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
     user_data = file("scripts/userdata.sh")

     tags = {
        "Name" = each.value
     }

    
     }



 
 
 resource "aws_instance" "monitori_instancia" {
     count = var.enable_monitori == 1 ? 1 : 0
     ami = var.ec2_specs.ami
     instance_type = var.ec2_specs.instance_type
     subnet_id = aws_subnet.public_subnet.id
     key_name = data.aws_key_pair.key.key_name
     vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
     user_data = file("scripts/userdata.sh")

     tags = {
        "Name" = "monitoreo"
     }

    
     }