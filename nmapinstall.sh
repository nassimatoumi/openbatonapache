#!/bin/sh

sudo apt-get update -y
sudo apt-get install nmap
nmap -sS 195.148.125.46
