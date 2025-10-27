#!/bin/bash
# Unified Deployment Script for DevOps Simulator
# Version: 2.0.0
# Supports both Production and Development environments

set -e

echo "====================================="
echo " DevOps Simulator - Deployment Script"
echo "====================================="

# Select environment (default = production)
DEPLOY_ENV=${1:-production}

if [ "$DEPLOY_ENV" == "production" ]; then
  echo "Environment: Production"
  echo "====================================="

  # Production configuration
  DEPLOY_REGION="us-east-1"
  APP_PORT=8080

  echo "Region: $DEPLOY_REGION"
  echo "Port: $APP_PORT"

  # Pre-deployment checks
  echo "Running pre-deployment checks..."
  if [ ! -f "config/app-config.yaml" ]; then
      echo "Error: Configuration file not found!"
      exit 1
  fi

  # Deploy production build
  echo "Starting production deployment..."
  echo "Pulling latest Docker images..."
  # docker pull devops-simulator:latest

  echo "Rolling update strategy initiated..."
  # kubectl rolling-update devops-simulator

  echo "Deployment completed successfully!"
  echo "Application available at: https://app.example.com"

elif [ "$DEPLOY_ENV" == "development" ]; then
  echo "Environment: Development"
  echo "====================================="

  # Development configuration
  DEPLOY_MODE="docker-compose"
  APP_PORT=3000
  ENABLE_DEBUG=true

  echo "Mode: $DEPLOY_MODE"
  echo "Port: $APP_PORT"
  echo "Debug: $ENABLE_DEBUG"

  # Pre-deployment checks
  echo "Running pre-deployment checks..."
  if [ ! -f "config/app-config.yaml" ]; then
      echo "Error: Configuration file not found!"
      exit 1
  fi

  # Install dependencies
  echo "Installing dependencies..."
  npm install

  # Run tests
  echo "Running tests..."
  npm test

  # Deploy using Docker Compose
  echo "Starting development environment..."
  docker-compose up -d

  # Wait for app startup
  echo "Waiting for application to be ready..."
  sleep 5

  # Health check
  echo "Performing health check..."
  curl -f http://localhost:$APP_PORT/health || exit 1

  echo "Deployment completed successfully!"
  echo "Application available at: http://localhost:$APP_PORT"
  echo "Hot reload enabled - code changes will auto-refresh"

else
  echo "Error: Unknown environment '$DEPLOY_ENV'"
  echo "Usage: ./deploy.sh [production|development]"
  exit 1
fi
