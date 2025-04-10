#!/bin/bash


echo "Updating package list..."
sudo apt update -y


echo "Installing Java..."
sudo apt install -y fontconfig openjdk-17-jre


java --version


echo "Adding Jenkins GPG key and repository..."
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null


echo "Updating package list after adding Jenkins repo..."
sudo apt update -y


echo "Installing Jenkins..."
sudo apt install -y jenkins


echo "Starting Jenkins service..."
sudo systemctl start jenkins

# Enable Jenkins to start at boot
sudo systemctl enable jenkins


echo "Checking Jenkins status..."
sudo systemctl status jenkins --no-pager


echo -e "\e[1;32m============================================\e[0m"
echo -e "\e[1;33mFetching initial admin password for Jenkins setup...\e[0m"
echo -e "\e[1;34mPaste this password into your browser when prompted:\e[0m"
echo -e "\e[1;36m"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo -e "\e[0m\e[1;32m============================================\e[0m"


echo -e "\e[1;32mJenkins installation completed successfully!\e[0m"
echo -e "\e[1;35mAccess Jenkins at: http://localhost:8080\e[0m"


echo "Jenkins installation completed."
echo "Access Jenkins at: http://<your-ip>:8080"
echo "if you set it on local then http://localhost:8080"
