#!/bin/bash
# Workspace Archive (Cleanup) Script
#
# Cleans up workspace-specific resources when the workspace is deleted.
# Currently just drops the PostgreSQL database.

set -e

# Derive workspace name from current directory or Conductor env var
touch ../setup_start
sleep 5
echo "CREATED"
touch ../setup_end
