#!/bin/bash
TOKEN="BAhJIiU4ZDU4NTcyYmVmNWIyN2VjYWMwM2I5ZmNkMWE4NTY1OQY6BkVG--9b500197f78a53bea65e9f8247971a0fcb18f943"
ID=8

curl "http://localhost:4741/loots/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
