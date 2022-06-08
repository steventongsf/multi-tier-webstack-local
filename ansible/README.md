# Architecture
## Control
local docker container
### Prerequisites
* create IAM user account with admin permissions (refine permission later): devopsadmin
* create access key for programmatic access (select CLI option)
### Control instance steps
* launch container and attach to instance
* exec command to setup authentication to AWS (use access key created in prerequisites): aws configure
* exec command to test: aws sts get-caller-identity
* exec command to test: cd ansible && ansible-playbook ./create-ec2key.yml