#!/usr/bin/env bash

operation_regex="^-?[0-9]+(.[0-9]+)? [+*/^-] -?[0-9]+(.[0-9]+)?$"

echo "Welcome to the basic calculator!" | tee operation_history.txt

while true; do
  echo "Enter an arithmetic operation or type 'quit' to quit:" | tee -a operation_history.txt
  read -r operation
  echo "$operation" >> operation_history.txt

  if [[ "$operation" == "quit" ]]; then
    echo "Goodbye!" | tee -a operation_history.txt
    break
  fi

  if [[ "$operation" =~ $operation_regex ]]; then
    arithmetic_result=$(echo "scale=2; $operation" | bc -l)
    echo "$arithmetic_result" | tee -a operation_history.txt
  else
    echo "Operation check failed!" | tee -a operation_history.txt
  fi
done
