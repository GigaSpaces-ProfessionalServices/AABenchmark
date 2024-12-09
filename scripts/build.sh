#!/usr/bin/env bash

CWD="$(pwd)"

SCRIPT_DIR="`dirname \"$0\"`"
SCRIPT_DIR="`( cd \"$SCRIPT_DIR\" && pwd )`"

cd $SCRIPT_DIR/..

echo "current working directory is: `(pwd)`";

if [ -e target ]; then
    echo "Purging existing files from target..."
    rm -r target/
fi
mvn clean install
mkdir target

cd "$CWD"

sleep 5
