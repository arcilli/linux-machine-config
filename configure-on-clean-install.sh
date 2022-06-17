bin/bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y snapd flameshot wget chromium-browser git unzip curl gnupg software-properties-common terminator htop nano fuse libfuse2 ca-certificates curl gnupg lsb-release


cd ~/Downloads

# VS Code
wget -O vscode.deb https://update.code.visualstudio.com/latest/linux-deb-x64/stable
sudo dpkg -i vscode.deb

# IntelliJ

wget --show-progress -qO ./toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
mkdir jetbrains-toolbox-app
tar -C jetbrains-toolbox-app -xf toolbox.tar.gz
jetbrains-toolbox-app/*/jetbrains-toolbox
rm -rf jetbrains-toolbox-app

# Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb



# docker setup
# ubuntu
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# debian
# TODO


# both
sudo groupadd docker
sudo usermod -aG docker $USER


# docker compose setup
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker swarm setup

# aws-cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

# terraform 
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install -y terraform

# aws-vault
sudo curl -L -o /usr/local/bin/aws-vault https://github.com/99designs/aws-vault/releases/latest/download/aws-vault-linux-$(dpkg --print-architecture)
sudo chmod 755 /usr/local/bin/aws-vault

# ferdi
sudo snap install ferdi
sudo apt install -y default-jdk
sudo apt install -y maven
mvn -version


# sbt +  scala
sudo apt-get install apt-transport-https curl gnupg -yqq
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo -H gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/scalasbt-release.gpg --import
sudo chmod 644 /etc/apt/trusted.gpg.d/scalasbt-release.gpg
sudo apt-get update
sudo get install -y sbt scala


# spotify
sudo snap install spotify

# gpaste
sudo apt-get install -y gpaste


# dbeaver
sudo snap install dbeaver-ce
sudo snap install postman

# robo3t
sudo snap install robo3t-snap

# redshift
sudo apt update
sudo apt install -y redshift redshift-gtk


# slack
sudo snap install slack

rm -rf ~/Downloads/*
newgrp docker


# TODO: starUML
