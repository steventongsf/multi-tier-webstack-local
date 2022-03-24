# Local Multi-tier application demo

## Overview
This application is a distributed application consisting of:
* Nginx
* Tomcat
* RabbitMQ
* Memcached
* MySql
Each of these services runs in a dedicated VM and the VMs are created and managed using Vagrant

## Bring up environment
```
vagrant up
```
## Remove environment
```
vagrant destroy
```

## Validate
Url: http://192.168.56/login
Credentials: admin_vp:admin_vp



