#!/bin/bash

ALLOWED_IP="37.120.137.205"
CURRENT_IP=$(curl -s http://checkip.amazonaws.com)

if [ "$CURRENT_IP" != "$ALLOWED_IP" ]; then
  echo "Unauthorized IP address: $CURRENT_IP"
  exit 1
fi

echo "Authorized IP address: $CURRENT_IP"
