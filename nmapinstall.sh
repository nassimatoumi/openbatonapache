#!/bin/sh

sudo apt-get update -y
sudo apt-get install nmap -y
sudo nmap -sS 195.148.125.46
