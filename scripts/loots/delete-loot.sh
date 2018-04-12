#!/bin/bash
ID=6

curl "http://localhost:4741/loots/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
