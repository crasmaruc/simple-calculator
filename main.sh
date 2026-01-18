#!/usr/bin/env bash

operation_regex="^-?[0-9]+ [+*/-] -?[0-9]+$"

echo "Enter an arithmetic operation:"
read -r operation

if [[ "$operation" =~ $operation_regex ]]; then
  echo "Operation check passed!"
else
  echo "Operation check failed!"
fi
