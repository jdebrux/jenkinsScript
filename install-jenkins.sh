#!/bin/bash

# Update the package list
sudo apt update

# Install Java Runtime Environment (JRE) if not already installed
sudo apt install -y openjdk-11-jre

# Add the Jenkins repository key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# Add the Jenkins repository to the list of sources
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list> /dev/null

# Update the package list again to include the Jenkins repository
sudo apt-get update

# Install Jenkins
sudo apt-get install -y jenkins