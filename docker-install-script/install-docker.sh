#!/bin/bash

echo "Updating packages..."
sudo apt update -y

echo "Installing Docker..."
sudo apt install docker.io -y

echo "Docker installation completed!"