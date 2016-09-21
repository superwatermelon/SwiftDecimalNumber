#!/bin/bash
set -ev
branch="$(git rev-parse --abbrev-ref HEAD)"
echo "Git branch: $branch"
if [ "$branch" = "master" ] ; then
  echo "Deploying..."
  bundle exec pod trunk push SwiftDecimalNumber.podspec
fi
