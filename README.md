# Jenkins Auto Installation Script for Ubuntu

This script will install Jenkins along with its dependencies (Java), configure the repository, and start the Jenkins service automatically.

---

## 🚀 How to Use

Follow the steps below on your Ubuntu system:

```bash
# 1. Download the install script
sudo wget https://github.com/roy35-909/Jenkins-demo/raw/main/install-jenkins.sh

# 2. Make the script executable
sudo chmod +x install-jenkins.sh

# 3. Run the script
sudo ./install-jenkins.sh


#Installation of Java
sudo apt update
sudo apt install fontconfig openjdk-21-jre
java -version
openjdk version "21.0.3" 2024-04-16
OpenJDK Runtime Environment (build 21.0.3+11-Debian-2)
OpenJDK 64-Bit Server VM (build 21.0.3+11-Debian-2, mixed mode, sharing)
