#!/bin/bash
clear
show_menu() {
  echo "######################################DOCKER BOILER PLATE LIST##########################################"
  echo "#                                                                                                      #"
  echo "#       1. Backend                                                                                     #"
  echo "#       2. Frontend                                                                                    #"
  echo "#       3. Database                                                                                    #"
  echo "#       4. Monitoring                                                                                  #"
  echo "#       5. Message Queue                                                                               #"
  echo "#       6. Operation                                                                                   #"
  echo "#       7. Exit                                                                                        #"
  echo "#                                                                                                      #"
  echo "########################################################################################################"
}

show_backend_list() {
  echo "######################################BACKEND BOILER PLATE LIST##########################################"
  echo "#                                                                                                       #"
  echo "#       1. Express.js                                                                                   #"
  echo "#       2. Django                                                                                       #"
  echo "#       3. Fast API                                                                                     #"
  echo "#       4. Flask                                                                                        #"
  echo "#       5. Spring Boot 3 & JDK 17                                                                       #"
  echo "#       6. Spring Boot 2 & JDK 11                                                                       #"
  echo "#                                                                                                       #"
  echo "#########################################################################################################"
}

show_frontend_list() {
  echo "######################################FRONTEND BOILER PLATE LIST#########################################"
  echo "#                                                                                                       #"
  echo "#       1. React                                                                                        #"
  echo "#       2. Next.js                                                                                      #"
  echo "#       3. Svelte                                                                                       #"
  echo "#                                                                                                       #"
  echo "#########################################################################################################"
}

show_database_list() {
  echo "######################################DATABASE BOILER PLATE LIST#########################################"
  echo "#                                                                                                       #"
  echo "#       1. MySQL                                                                                        #"
  echo "#       2. PostgreSQL                                                                                   #"
  echo "#       3. Redis                                                                                        #"
  echo "#                                                                                                       #"
  echo "#########################################################################################################"
}

show_monitoring_list() {
  echo "######################################MONITORING BOILER PLATE LIST#######################################"
  echo "#                                                                                                       #"
  echo "#       1. Prometheus                                                                                   #"
  echo "#       2. Grafana                                                                                      #"
  echo "#       3. cAdvisor                                                                                     #"
  echo "#       4. Node-Exporter                                                                                #"
  echo "#                                                                                                       #"
  echo "#########################################################################################################"
}

show_message_queue_list() {
  echo "######################################MESSAGE QUEUE BOILER PLATE LIST####################################"
  echo "#                                                                                                       #"
  echo "#       1. RabbitMQ                                                                                     #"
  echo "#       2. Kafka                                                                                        #"
  echo "#                                                                                                       #"
  echo "#########################################################################################################"
}

show_operation_list() {
  echo "######################################OPERATION BOILER PLATE LIST#######################################"
  echo "#                                                                                                      #"
  echo "#       1. Portainer                                                                                   #"
  echo "#       2. Nginx Proxy Manager                                                                         #"
  echo "#       3. Nginx                                                                                       #"
  echo "#                                                                                                      #"
  echo "########################################################################################################"
}

while true; do
  show_menu

  read -p "Select the number you want to show list of boiler plate: " SELECT
  clear
  case $SELECT in
    1)
      show_backend_list
      ;;
    2)
      show_frontend_list
      ;;
    3)
      show_database_list
      ;;
    4)
      show_monitoring_list
      ;;
    5)
      show_message_queue_list
      ;;
    6)
      show_operation_list
      ;;
    7)
      exit
      ;;
    *)
      echo "Please enter a valid number."
      ;;
  esac

  read -p "Do you want to go back to the main menu? (y/n): " choice
  case $choice in
    y|Y)
      continue
      ;;
    *)
      exit
      ;;
  esac
done
