#!/usr/bin/env bash

set -eEuo pipefail

# This script is used to generate a random password for the PostgreSQL database
# and append it to the .env file if a password is not already set.

if ! grep -q "POSTGRES_PASSWORD=" .env; then
  echo "POSTGRES_PASSWORD=$(openssl rand -hex 16)" >> .env
fi
