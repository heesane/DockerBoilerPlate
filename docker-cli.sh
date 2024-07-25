#!/bin/bash

show_logo(){
  echo "########################################################################################################"
  echo "##______               _                 ______         _  _              ______  _         _         ##"
  echo "##|  _  \             | |                | ___ \       (_)| |             | ___ \| |       | |        ##"
  echo "##| | | |  ___    ___ | | __  ___  _ __  | |_/ /  ___   _ | |  ___  _ __  | |_/ /| |  __ _ | |_   ___ ##"
  echo "##| | | | / _ \  / __|| |/ / / _ \| '__| | ___ \ / _ \ | || | / _ \| '__| |  __/ | | / _\` || __| / _ \\##"
  echo "##| |/ / | (_) || (__ |   < |  __/| |    | |_/ /| (_) || || ||  __/| |    | |    | || (_| || |_ |  __/##"
  echo "##|___/   \___/  \___||_|\_\ \___||_|    \____/  \___/ |_||_| \___||_|    \_|    |_| \__,_| \__| \___|##"
  echo "########################################################################################################"
}
setting(){
  sleep 1
  echo
  echo "This script will install Docker and Docker Compose on your system."
  echo "Also, you can use Docker Boiler Plate for your project."
  echo "Please wait a moment..."
  echo
  sleep 1
}

menu(){
  echo "########################################################################################################"
  echo "#              1. Install Docker & Docker Compose       2. Install Docker Boiler Plate                 #"
  echo "#              3. Show Docker Boiler Plate List         4. Remove Docker Boiler Plate                  #"
  echo "#              5. Exit                                                                                 #"
  echo "########################################################################################################"
  echo
}

show_logo
setting
while true; do

  menu

  read -p "Select the number you want to proceed: " SELECT
  case $SELECT in
    1)
      sh ./setting-docker.sh
      ;;
    2)
      sh ./docker-boiler-plate.sh
      ;;
    3)
      sh ./show-docker-boiler-plate.sh
      ;;
    4)
      sh ./remove-docker-boiler-plate.sh
      ;;
    5)
      exit
      ;;
    *)
      echo "Please enter a valid number."
  esac
done
