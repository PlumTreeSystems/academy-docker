#!/bin/sh
if ! node -v | grep -q 'v17'; then
  echo "Missing node.js v17"
  return 1;
fi
if ! java --version | grep -q 'openjdk 11'; then
  echo "Missing OpenJDK 11"
  return 1;
fi
if ! ruby -v; then
  echo "Missing ruby"
  return 1;
fi
echo Hello world!
return 0;