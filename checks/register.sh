#!/bin/sh
# A new user registers (a row written to MySQL) and lands on the learning page.
u="check$(date +%s)$$"
curl -sS -o /dev/null -w '%{redirect_url}' -X POST \
  -d "name=Check&username=$u&email=$u@example.com&password=check1234&cpassword=check1234" \
  http://app:9090/register | grep -q '/learn$'
