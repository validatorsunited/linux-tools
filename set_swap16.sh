#!/bin/bash

sudo swapoff -a
rm "/swapfile"
sudo fallocate -l 16G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
swapon --show