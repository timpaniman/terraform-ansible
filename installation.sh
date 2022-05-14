 #!/bin/bash
sudo apt update && upgrade
sudo apt install -y python3.8
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y openjdk-8-jre
sudo apt-get install -y jenkins
