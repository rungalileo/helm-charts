#!/bin/bash

set -e

# Function to lint a helm chart
lint_chart() {
  local chart_dir=$1
  echo "Linting $chart_dir..."
  helm lint "$chart_dir"
}

# Lint all charts in the charts directory
for chart_dir in charts/*; do
  if [ -d "$chart_dir" ]; then
    lint_chart "$chart_dir"
  fi
done
