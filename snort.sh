#!/bin/sh 
sudo snort -dev -c /etc/snort/snort.conf -l /home/ubuntu -i eth0 &
