#!/bin/bash

hostnamectl set-hostname `hostname` --static
hostnamectl set-deployment production

echo "HOSTNAME=`hostname`" >> /etc/sysconfig/network
echo "preserve_hostname: true" >> /etc/cloud/cloud.cfg

