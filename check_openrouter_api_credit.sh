#!/bin/bash

curl -s https://openrouter.ai/api/v1/key \
  -H "Authorization: Bearer $OPENROUTER_API_KEY" \
  | jq '.data | {label, limit, limit_remaining, usage, usage_daily, usage_monthly}'
