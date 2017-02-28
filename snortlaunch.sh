#!/bin/sh
snort -dev -c /etc/snort/snort.conf -l . -i eth0
