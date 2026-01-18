#!/usr/bin/env bash

operation_regex="^-?[0-9]+(.[0-9]+)? [+*/^-] -?[0-9]+(.[0-9]+)?$"

echo "Enter an arithmetic operation:"
read -r operation

if [[ "$operation" =~ $operation_regex ]]; then
  arithmetic_result=$(echo "scale=2; $operation" | bc -l)
  printf "%s\n" "$arithmetic_result"
else
  echo "Operation check failed!"
fi
