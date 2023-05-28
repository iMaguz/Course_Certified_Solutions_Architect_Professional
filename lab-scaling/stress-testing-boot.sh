#!/bin/bash
# USAGE: Place in in the User Data section (under Advanced) when launching an EC2 instance
# DESCRIPTION: After updating from the repo, installs stress, a tool used to create various system load for testing purposes.
yum update -y
yum install stress-ng -y
/usr/bin/stress-ng --cpu 0 --cpu-method all --keep-name --cpu-load 100 --timeout 10m
