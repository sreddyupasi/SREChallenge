# SREChallenge
IAAC for developing instance of web-server using terraform and testing the web servers using Puppet
# SREChallenge
For this project, please think about how you would architect a scalable and secure static web application in AWS or another IaaS provider.
* Create and deploy a running instance of a web server using a configuration management tool of your choice. The web server should serve one page with the following content.
```
<html>
<head>
<title>Hello World</title>
</head>
<body>
<h1>Hello World!</h1>
</body>
</html>
```
* Secure this application and host such that only appropriate ports are publicly exposed and any http requests are redirected to https. This should be automated using a configuration management tool of your choice and you should feel free to use a self-signed certificate for the web server.
* Develop and apply automated tests to validate the correctness of the server configuration.

# SET UP DEPENDENCIES:
install.sh is a bash script 
Installs terraform, python, node.js, python-pip, wget, unzip and generates ssh
use:

bash install.sh

to install all the dependencies

# AWS ENVIRONMENT
Set AWS environment variables using aws cli:

export AWS_ACCESS_KEY_ID=[AWS_ACCESS_KEY_ID]

export AWS_SECRET_ACCESS_KEY=[AWS_SECRET_ACCESS_KEY]

# Web Server
Once you've set environment variables, you can go into the directory web-servers and deploy infrastructure:

cd web-server

terraform apply

# Tests
Automated test using:

pytest --driver PhantomJS

# Destroy infrastructure:
Destroy infrastructure with:

terraform destroy 
