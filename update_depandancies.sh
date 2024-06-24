#!/bin/bash

repos=("repo1" "repo2" "repo3")

for repo in "${repos[@]}"; do
  cd "$repo"
  git pull
  # Assuming a Node.js project
  npm update
  git add package.json package-lock.json
  git commit -m "Update dependencies"
  git push
  cd ..
done