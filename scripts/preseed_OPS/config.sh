#!/bin/bash
#Author Son Do Xuan

##########################################
#### Set local variable  for scripts #####
##########################################

# Variable
## IP address of COBBLER, APT_CACHE_SERVER and path for repo Ubuntu
COBBLER_IP=192.168.122.1
APT_CACHE_SERVER=192.168.122.1 #config this line if you have apt-cache-ng server
REPO_FOLDER=/OPS-setup

## Folder name contain scripts to install OpenStack
PATH_OPSsetup="OPS-setup"

## User name, user password and root password
USER_NAME=ubuntu
USER_PASS=welcome123
ROOT_PASS=welcome123

## Compute number and Block number
com_num=1
blk_num=1
