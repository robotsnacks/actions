#! /bin/sh

set -e

pattern=$1

case "$GITHUB_REF" in
  "")
    echo "\$GITHUB_REF is not set"
    exit 1
    ;;
  $pattern)
    echo "$GITHUB_REF matches $pattern"
    exit 0
    ;;
  *)
    echo "$GITHUB_REF does not match $pattern"
    exit 78
esac
