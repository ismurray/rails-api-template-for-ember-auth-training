#!/bin/bash

NAME='iluaewkdsjfb'
VALUE=9999
USER_ID=2

curl "http://localhost:4741/loots" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "loot": {
      "name": "'"${NAME}"'",
      "value": "'"${VALUE}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
