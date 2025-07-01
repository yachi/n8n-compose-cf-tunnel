#!/bin/bash

set -e

mkdir -p /opt/google/chrome/
ln -sf /ms-playwright/chromium-*/chrome-linux/chrome /opt/google/chrome/chrome
exec npx @playwright/mcp@latest --port 8931 --browser chrome --isolated --no-sandbox
