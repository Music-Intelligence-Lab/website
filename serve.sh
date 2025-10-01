#!/bin/bash

# Serve the Jekyll site locally
# This script starts a local development server

echo "Starting Music Intelligence Lab website..."
echo "The site will be available at: http://localhost:4000"
echo "Production site: https://music-intelligence-lab.github.io"
echo "Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --livereload
