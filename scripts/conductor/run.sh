#!/bin/bash
# TrashLab Conductor Run Script
#
# This script starts the development server when the user clicks
# the "Run" button in Conductor.
#
# Environment variables provided by Conductor:
#   $CONDUCTOR_WORKSPACE_PATH - Path to the workspace
#   $CONDUCTOR_ROOT_PATH - Path to the main repository
#   $CONDUCTOR_WORKSPACE_NAME - Name of the workspace
#   $CONDUCTOR_PORT - Base port for the workspace

set -e

cd "$CONDUCTOR_WORKSPACE_PATH"

# Source environment variables
if [ -f .env.local ]; then
  set -a
  source .env.local
  set +a
fi

# Check if just is available
if command -v just &> /dev/null; then
  exec just dev
else
  echo "Error: 'just' command not found"
  echo "Install it with: brew install just"
  exit 1
fi
