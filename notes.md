
# To start Ubuntu running via Vagrant
$ vagrant init ubuntu/trusty64
$ vagrant up
$ vagrant ssh

# Inside Ubuntu instance
## To update and install all packages and softwares
$ sudo apt-get update
$ sudo apt-get -y install git make vim python-dev python-pip libffi-dev libssl-dev libxml2-dev libxslt1-dev libjpeg8-dev zlib1g-dev

## To install ansible
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo apt-add-repository ppa:ansible/ansible
$ sudo apt-get update
$ sudo apt-get install ansible

## Install python 3.6 and make it default
$ sudo apt-get install python3.6
$ alias python=python3.6
$ source ~/.bashrc

## Install awscli
$ pip3 install awscli --upgrade --user
### configure to use access key and secret access
$ aws configure
AWS Access Key ID [None]: AKIAI44QH8DHBEXAMPLE
AWS Secret Access Key [None]: je7MtGbClwBF/2Zp9Utk/h3yCo8nvbEXAMPLEKEY
Default region name [None]: us-east-1
Default output format [None]: json

## Created Bitnami Jenkins EC2 instance
## It has Jenkins running on start and can be accessed over port 80
## It has default username "user" and password to be accessed from syslogs

## To clone set up SSH Keys first
## To install maven
$ sudo apt-get update
$ sudo apt-get install maven -y
### To run Jar run below command inside the folder after git cloning the repo
$ mvn clean install
$ java -jar target/ScrumsterService-1.0-SNAPSHOT.jar
#### better to get $ java -jar target/*.jar
