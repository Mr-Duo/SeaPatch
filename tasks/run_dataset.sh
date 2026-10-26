#!/bin/bash

# Run Codex
harbor run \
    --path "58008-60" \
    -a codex \
    -m "openrouter/openai/gpt-6-luna" \
    --n-concurrent 6 \
    --ak "config=secret/config.toml.secret" \
    --ae "OPENROUTER_API_KEY=$OPENROUTER_API_KEY" \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10

# Run Claude-Code
harbor run \
    --path "58008-60" \
    -a claude-code \
    -m "openrouter/openai/gpt-6-luna" \
    --n-concurrent 6 \
    --ak "config=secret/setting.local.json.secret" \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10

# Run Mini-SWE-Agent
harbor run \
    --path "58008-60" \
    -a mini-swe-agent\
    -m "openrouter/openai/gpt-6-luna" \
    --n-concurrent 6 \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10