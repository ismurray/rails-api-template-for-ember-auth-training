#!/bin/bash

curl "http://localhost:4741/loots" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
