#!/bin/bash
echo "este es un mensaje" >~/mesaje.txt
yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd