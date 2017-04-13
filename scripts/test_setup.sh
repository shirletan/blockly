#!/bin/bash

EXIT_STATUS=0

function check_command {
    "$@"
    local STATUS=$?
    if [ $STATUS -ne 0 ]; then
      echo "error with $1 ($STATUS)" >&2
      EXIT_STATUS=$STATUS
      fi
   }

check_command scripts/get_geckdriver.sh 
check_command scripts/get_selenium.sh 
check_command scripts/get_chromedriver.sh 
check_command scripts/selenium_connect.sh 
exit $EXIT_STATUS
