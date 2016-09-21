#!/bin/bash
set -ev
if [ "$(git rev-parse --abbrev-ref HEAD)" = "master" ] ; then
  bundle exec pod trunk push SwiftDecimalNumber.podspec
fi
