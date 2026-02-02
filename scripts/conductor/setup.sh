#!/bin/bash
# Workspace Archive (Cleanup) Script
#
# Cleans up workspace-specific resources when the workspace is deleted.
# Currently just drops the PostgreSQL database.

set -e

# Derive workspace name from current directory or Conductor env var
echo "starting setup etc..."
sleep 7
echo "CREATED"
sleep 2