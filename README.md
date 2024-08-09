# Hosting an HTML Website on an EC2 Instance

## Overview

This project demonstrates how to host an HTML website on an AWS EC2 instance. The website files are stored in an S3 bucket, and a bash script is used to automate the deployment process. The script downloads the files from the S3 bucket, extracts them, and sets up the website on an EC2 instance running an Apache web server.

## Hosting from an S3 Bucket

### Description

In this task, the website files are stored in an S3 bucket. A bash script is used to automatically download these files, extract them, and configure the website on an EC2 instance running the Apache web server.

### Script

```bash
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
```

### Steps

1. **Update Packages**: The script begins by updating all packages on the EC2 instance to ensure they are up-to-date.
2. **Install Apache and AWS CLI**: The script installs the Apache web server (`httpd`) and the AWS CLI.
3. **Download Website Files**: The script downloads the `mole.zip` file containing the website files from the specified S3 bucket.
4. **Extract and Deploy**: The script extracts the files from `mole.zip` and copies them to the appropriate directory.
5. **Start Apache Server**: The script enables the Apache service to start on boot and starts the service.

### Result

The website is successfully hosted on the EC2 instance using files from the S3 bucket.

## Conclusion

This task successfully demonstrates how to automate the deployment of a website on an AWS EC2 instance using a bash script. The script handles the entire process, from downloading the files from S3 to configuring the web server and hosting the website.

---
