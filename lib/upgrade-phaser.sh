#!/bin/sh

# Check if <path>/build and <path>/typescript exist
if [ ! -d "$1" ]; then
  echo "Path provided did not exist. Please provide the path to the cloned phaser-ce repository."
  exit 1
fi

if [ ! -d "$1/build" ]; then
  echo "Build directory not found at path provided."
  exit 1
fi

if [ ! -d "$1/typescript" ]; then
  echo "Typescript directory not found at path provided."
  exit 1
fi

CURRENT_VERSION="$(cat version.txt)"
echo "Current phaser-ce version:\n  $CURRENT_VERSION"

# Read the version from <path>/package.json
VERSION="$(grep 'version' $1/package.json)"
echo "Preparing to upgrade to phaser-ce version:\n$VERSION"

# Copy <path>/build/*.js and <path>/build/*.map to this directory
echo "Copying phaser library files..."
cp $1/build/*.js .
cp $1/build/*.map .

# Copy <path>/typescript/*.d.ts to the types directory
if [ ! -d "./types" ]; then
  mkdir types
fi
echo "Copying phaser type definitions..."
cp $1/typescript/*.d.ts ./types

# Write the version to version.txt
echo $VERSION > version.txt

echo "Finished! Upgraded phaser-ce to the following version:\n$VERSION"