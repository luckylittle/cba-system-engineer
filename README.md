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
1. Clone this repo to your hard drive:
```sh
$ cd; mkdir Projects; cd Projects
$ git clone git@github.com:luckylittle/cba-system-engineer.git
```

2. Install AWS CLI:
```sh
$ pip install awscli
```
  * Note: On some versions of MacOSX, you will need to use following:
```sh
$ sudo pip install awscli --ignore-installed six
```

3. Configure AWS CLI:
```sh
$ aws configure
AWS Access Key ID:          [********************] 
AWS Secret Access Key:      [********************] 
Default region name [None]: ap-southeast-2
```

4. Create the stack, use your key pair name ('key_pair_name' below) as a parameter:
```sh
$ aws cloudformation create-stack --stack-name cba-system-engineer --template-body file://cba-system-engineer.json --parameters ParameterKey=KeyName,ParameterValue=<key_pair_name>
```

5. Wait for the stack to be provisioned (you can monitor it in the AWS Console -> CloudFormation -> Stacks)

6. Find the public IP of the ELB:
```sh
$ aws cloudformation describe-stacks --stack-name cba-system-engineer | grep OutputValue
```

7. Testing:
```sh
$ curl http://<ELB-public-IP-address>/customers -v
```

### Bootstraping code:
```sh
$ sudo yum update -y aws-cfn-bootstrap                                          # update the AWS CloudFormation Helper Scripts
$ sudo yum -y install docker                                                    # install the latest Docker
$ sudo gpasswd -a ec2-user docker                                               # add ec2-user to the docker group
$ sudo su ec2-user                                                              # workaround for logout/login after the ec2-user added to the group
$ sudo service docker restart                                                   # restarting the Docker service after the previous workaround
$ docker pull luckylittle/cba-system-engineer                                   # download the image from my Docker Hub repo
$ docker run -d -p 5000:5000 luckylittle/cba-system-engineer python app/app.py  # run the container in the background and map port 5000
```

### Alternative Docker registry:
```sh
$ docker login <someregistry.example.com> 
$ docker build -t <someregistry>/<image> .
$ docker push <someregistry>/<image>
```

### Contributors
Lucian Maly <<lucian.maly@odecee.com.au>>
