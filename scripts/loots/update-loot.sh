#!/bin/bash
NAME='hi hello'
VALUE=13000
ID=7

curl "http://localhost:4741/loots/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "loot": {
      "name": "'"${NAME}"'",
      "value": "'"${VALUE}"'"
    }
  }'

echo
