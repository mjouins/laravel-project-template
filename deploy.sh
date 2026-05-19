#!/bin/bash

set -e # Exit on first error

echo "Pulling latest code..."
git config --global --add safe.directory "$(pwd)"  # Fix Git safe-dir issue in some CI environments
git pull origin main

echo "Starting containers..."
docker compose -f docker-compose.prod.yml up -d --build

