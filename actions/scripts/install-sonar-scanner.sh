#!/bin/bash

if [ ! -d "/home/runner/.sonar/sonar-scanner-5.0.1.3006-linux" ];then
  echo "Installing sonar-scanner....."
  wget -q https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-5.0.1.3006-linux.zip
  unzip -qq sonar-scanner-cli-5.0.1.3006-linux.zip
  rm sonar-scanner-cli-5.0.1.3006-linux.zip
  mkdir /home/runner/.sonar
  sudo mv sonar-scanner-5.0.1.3006-linux /home/runner/.sonar
  echo "sonar-scanner installation successful!"

  echo "Cleaning up old sonar scanner version..."
  if [ -d "/home/runner/.sonar/sonar-scanner-4.8.1.3023-linux" ];then
    rm /home/runner/.sonar/sonar-scanner-4.8.1.3023-linux
  fi
fi

echo "You can now use sonar-scanner!"
