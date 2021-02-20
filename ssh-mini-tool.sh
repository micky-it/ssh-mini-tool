#!/bin/bash


export LBLUE="\e[1;34m"
export LGREEN="\e[1;32m"
export RED="\e[0;31m"
export Z="\e[0m"

clear
echo -e "$LBLUE\bWelcome to the mini-remote tool. This is a tool for use ssh or ssh packages. Please complete the questions below: $Z"
echo -n "Server username: "
read VAR1
echo -n "Server name/ip: "
read VAR2
echo -n "Action [shutdown/reboot/alert/shell]: "
read VAR3

if [[ $VAR3 = shutdown ]]
then
  clear
  echo -e "$LBLUE\bSSH shutdown tool $Z"
  ssh -t -oStrictHostKeyChecking=no $VAR1@$VAR2 "
      sudo shutdown -h now 
  "
      echo -e "$LGREEN\bThe computer was shut down successfully $Z"
      exit 0


elif [[ $VAR3 = reboot ]]
then
  clear
  echo -e "$LBLUE\bSSH reboot tool $Z"
  ssh -t -oStrictHostKeyChecking=no $VAR1@$VAR2 "
      sudo reboot
  "
      echo -e "$LGREEN\bThe computer was rebooted successfully $Z"
      exit 0


elif [[ $VAR3 = alert ]]
then
  clear
  echo -e "$LBLUE\bSSH notification tool $Z"
  echo -n "Type of alert [none/low/normal/critical]: "
  read VAR4
  echo -n "Notification text: "
  read VAR5  
  
    if [[ $VAR4 = low ]] || [[ $VAR4 = normal ]] || [[ $VAR4 = critical ]]
    then
      var3=$(ssh -t -oStrictHostKeyChecking=no $VAR1@$VAR2 "
      notify-send --urgency=$VAR4 $VAR5 
      ")
        if [[ $? = 0 ]]
        then
          echo -e "$LGREEN\bNotification was sent successfully $Z"
          exit 0

        else
          echo -e "$RED\bAn error has occurred"
          exit 1

        fi

    elif [[ $VAR4 = none ]]
    then
      ssh -t -oStrictHostKeyChecking=no $VAR1@$VAR2 "
      notify-send $VAR5
      "
      exit 0
      

    else
    echo -e "$RED Unknown command '$VAR4' $Z"
    exit 1

    fi

elif [[ $VAR3 = shell ]]
then
  echo -e "$LBLUE\bSSH shell $Z"
  ssh -t -oStrictHostKeyChecking=no $VAR1@$VAR2
  exit 0
  

else
echo -e "$RED\bUnknown command '$VAR3' $Z"
exit 1

fi
