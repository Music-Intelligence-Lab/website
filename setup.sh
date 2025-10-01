#!/bin/bash

# Setup script for Music Intelligence Lab Jekyll site
# This script installs dependencies needed to run the site

echo "Setting up Music Intelligence Lab website..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "Error: Ruby is not installed. Please install Ruby first."
    echo "Visit: https://www.ruby-lang.org/en/documentation/installation/"
    exit 1
fi

echo "Ruby version: $(ruby -v)"

# Check if Bundler is installed
if ! command -v bundle &> /dev/null; then
    echo "Installing Bundler..."
    gem install bundler
fi

# Install Jekyll and dependencies
echo "Installing Jekyll and dependencies..."
bundle install

echo ""
echo "Setup complete!"
echo "Run './serve.sh' to start the local development server"
