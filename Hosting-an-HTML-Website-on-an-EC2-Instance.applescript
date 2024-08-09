#!/bin/bash
sudo su
yum update -y
yum install -y httpd aws-cli
cd /var/www/html
aws s3 cp s3://awsv8bucket/mole.zip .
unzip mole.zip
cp -R mole/. /var/www/html
systemctl enable httpd
systemctl start httpd
