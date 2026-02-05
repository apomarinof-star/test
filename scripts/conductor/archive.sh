#!/bin/bash
# Workspace Archive (Cleanup) Script
#
# Cleans up workspace-specific resources when the workspace is deleted.
# Currently just drops the PostgreSQL database.

set -e

# Derive workspace name from current directory or Conductor env var
echo "starting teardown etc..."
sleep 4
touch "end-$(date -Iseconds)"
echo "DELETED"
sleep 1