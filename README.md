2016-11-21
---
This was created for an interview with Andrew Tenney from CBA.
---

### Tasks:
+ Outside of including the Python runtime to support the application, there are no limitations on what value-adds you bake into the running host. Show us what you’ve got.
+ Work with an operating system that you’re most comfortable with.
+ Ensure that you also consider non-functional requirements.
+ We prefer something that we can clone from your Github repo and run for ourselves.
+ Accordingly,we don’t want or need access to your AWS/Azure/DigitalOcean/whatever VPC. There’s nothing stopping you using these for yourself for the purposes of building out your submission, but PLEASE make sure that your submission does not include access keys or credentials.

### Solution:
1. Install aws-cli:
```sh
$ pip install awscli
```

### Bootstraping code:
```sh
$ sudo yum update -y aws-cfn-bootstrap                        # update the AWS CloudFormation Helper Scripts
<- cfn-init ->
$ sudo yum -y install docker                                  # install the Docker
$ sudo gpasswd -a ec2-user docker                             # add ec2-user to the docker group
$ sudo su ec2-user                                            # workaround for logout/login after the ec2-user added to the group
$ sudo service docker restart                                 # restarting the Docker service after the previous workaround
$ docker pull luckylittle/cba-system-engineer                 # download the image from my Docker Hub repo
$ docker run -p 5000:5000 -d luckylittle/cba-system-engineer  # run the container in the background and map port 5000
<- cfn-signal ->
```

### Testing:
```sh
$ curl http://<ELB-public-IP-address>:5000/customers -v
```

### Contributors
Lucian Maly <<lucian.maly@odecee.com.au>>