#!/bin/bash
if [ "$(git rev-parse --abbrev-ref HEAD)" = "deploy" ] ; then
  bundle exec pod trunk push SwiftDecimalNumber.podspec
fi
