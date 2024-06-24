#!/bin/bash

repos=("repo1" "repo2" "repo3")

for repo in "${repos[@]}"; do
  cd "$repo"
  git fetch upstream
  git checkout main
  git merge upstream/main
  git push
  cd ..
done