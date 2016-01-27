#!/bin/bash

mv *.repo /etc/yum.repo.d/
yum install mongodb-org


rpm -Uvh ./jre*
yum install epel-release nc screen nodejs wget 
yum update && yum upgrade

curl --silent --location https://rpm.nodesource.com/setup | bash -

npm -g install npm@latest
npm -g install n
n latest
