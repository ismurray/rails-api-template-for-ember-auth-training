#!/bin/bash
ID=2

curl "http://localhost:4741/loots/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
