
### To start Ubuntu running via Vagrant
```
$ vagrant init ubuntu/trusty64<br>
$ vagrant up<br>
$ vagrant ssh<br>
```


### Inside Ubuntu instance
#### To update and install all packages and softwares
```
$ sudo apt-get update<br>
$ sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev<br>
```

### To install ansible
```
$ sudo apt-get update<br>
$ sudo apt-get install software-properties-common<br>
$ sudo apt-add-repository ppa:ansible/ansible<br>
$ sudo apt-get update<br>
$ sudo apt-get install ansible<br>
```


### Install python 3.6 and make it default<br>
```
$ sudo apt-get install python3.6<br>
$ alias python=python3.6<br>
$ source ~/.bashrc<br>
```

Install awscli<br>
`$ pip3 install awscli --upgrade --user`<br>
configure to use access key and secret access<br>
`$ aws configure`<br>
AWS Access Key ID [None]: AKIAI44QH8DHBEXAMPLE<br>
AWS Secret Access Key [None]: je7MtGbClwBF/2Zp9Utk/h3yCo8nvbEXAMPLEKEY<br>
Default region name [None]: us-east-1<br>
Default output format [None]: json<br>

Created Bitnami Jenkins EC2 instance<br>
It has Jenkins running on start and can be accessed over port 80<br>
It has default username "user" and password to be accessed from syslogs<br>

To clone set up SSH Keys first<br>
To install maven<br>
`$ sudo apt-get update`<br>
`$ sudo apt-get install maven -y`<br>
To run Jar run below command inside the folder after git cloning the repo<br>
`$ mvn clean install`<br>
`$ java -jar target/ScrumsterService-1.0-SNAPSHOT.jar`<br>
better to get $ java -jar target/*.jar



### Dockerfile to run docker container
-------------------------------
```
#Using docker with JAVA8 base<br>
FROM dpatriot/docker-awscli-java8

#Maintainer information<br>
MAINTAINER "Sunil Narasimhamurthy suniltheta.com" <suniltheta@gmail.com>

#Expose port so that user of this file knows<br>
EXPOSE 8080

#Set label<br>
LABEL version="1.0"

#Copy jar files<br>
COPY *.jar /data/app.jar

#This command runs when docker starts<br>
ENTRYPOINT ["java","-jar","app.jar"]
```
<br>
----------------------------------------

### docker run command<br>
Sample run commands-> `docker run -p 80:8080 -v /home/ec2-user:/data -it dpatriot/docker-awscli-java8 /bin/bash`
for our application<br>
`$ docker build -t emma-image .`<br>
`$ docker run -p 80:8080 --name=emma -d emma-image`<br>
Now the application is accessible over port 80 (http)<br>
Other commands<br>
```
$ docker rm `docker ps --no-trunc -aq` #to remove dead containers<br>
$ docker ps -q # to list only running container ids<br>
$ docker stop emma # stop emma
```

#### Consolidated deploy steps

copy jar file into host<br>
stop docker instance<br>
```
$ docker stop emma  || true<br>
$ docker rm `docker ps --no-trunc -aq`  || true
```

remove emma-image<br>
`$ docker rmi -f emma-image`

create new emma-image<br>
`$ docker build -t emma-image .`

run emma<br>
`$ docker run -p 80:8080 --name=emma -d emma-image`


Final build and deploy command<br>
`$ mvn clean install`<br>
`$ sudo ansible-playbook deploy.yml -i /opt/bitnami/inventory`
