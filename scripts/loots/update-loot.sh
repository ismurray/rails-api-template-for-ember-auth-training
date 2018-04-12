#!/bin/bash
TOKEN="BAhJIiU4ZDU4NTcyYmVmNWIyN2VjYWMwM2I5ZmNkMWE4NTY1OQY6BkVG--9b500197f78a53bea65e9f8247971a0fcb18f943"
NAME='testing'
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
