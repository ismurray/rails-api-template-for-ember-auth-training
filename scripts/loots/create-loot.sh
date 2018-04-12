#!/bin/bash
TOKEN="BAhJIiU4ZDU4NTcyYmVmNWIyN2VjYWMwM2I5ZmNkMWE4NTY1OQY6BkVG--9b500197f78a53bea65e9f8247971a0fcb18f943"
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
