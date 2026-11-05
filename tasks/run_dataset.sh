#!/bin/bash

# deepseek/deepseek-v4.1-flash-1017
# Run Codex
harbor run \
    --path "58008-60" \
    -a codex \
    -m "openrouter/deepseek/deepseek-v4.1-flash-1017" \
    --n-concurrent 6 \
    --ak "config=config.toml.secret" \
    --ae "OPENROUTER_API_KEY=$OPENROUTER_API_KEY" \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10

# Run Claude-Code
harbor run \
    --path "58008-60" \
    -a claude-code \
    -m "openrouter/deepseek/deepseek-v4.1-flash-1017" \
    --n-concurrent 6 \
    --ak "config=setting.local.json.secret" \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10

# Run Mini-SWE-Agent
harbor run \
    --path "58008-60" \
    -a mini-swe-agent \
    -m "openrouter/deepseek/deepseek-v4.1-flash-1017" \
    --n-concurrent 6 \
    --verifier-timeout-multiplier 10 \
    --agent-setup-timeout-multiplier 10 \
    --environment-build-timeout-multiplier 10 