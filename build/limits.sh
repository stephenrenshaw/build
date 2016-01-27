#!/bin/bash

ulimit -l unlimited

cat /etc/security/limits.conf 
elasticsearch - nofile 65535
elasticsearch - memlock unlimited
root - memlock unlimited

cat /etc/security/limits.d/90-nproc.conf 
*          soft    nproc     1024
root       soft    nproc     unlimited

cat /etc/security/limits.d/99-mongodb-nproc.conf
mongod - fsize unlimited
mongod - cpu unlimited
mongod - as unlimited
mongod - nofile 64000
mongod - rss unlimited
mongod - nproc 64000
mongod - memlock unlimited

