Task 1 Script
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

TASK 2 SCRIPT
#!/bin/bash
sudo su
yum update -y
yum install -y httpd wget unzip
cd /var/www/html
wget https://github.com/simbaaws88/Hosting-the-HTML-Website-from-a-GitHub-Repository/archive/refs/heads/master.zip -O mole.zip
unzip mole.zip
cp -R Hosting-the-HTML-Website-from-a-GitHub-Repository-main/. /var/www/html
systemctl enable httpd
systemctl start httpd