#!/bin/bash

pwd_dir='/home/ec2-user/htpasswd'
ssh docker.janmyr.com mkdir -p $pwd_dir
pushd ~/Projects/secrets >/dev/null 2>&1
scp -r docker.janmyr.com/htpasswd/* docker.janmyr.com:$pwd_dir
popd >/dev/null 2>&1


