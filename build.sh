#!/usr/bin/env bash

BUILD_TAG=$(date +%d%m%Y%M%S)
BASE_BUILD_DIR=/tmp/minimula

if [ -d $BASE_BUILD_DIR ]; then
    rm -r $BASE_BUILD_DIR
fi

mkdir $BASE_BUILD_DIR

GOOS=windows GOARCH=386 go build -o $BASE_BUILD_DIR/minimula-win32-$BUILD_TAG.exe
GOOS=windows GOARCH=amd64 go build -o $BASE_BUILD_DIR/minimula-win64-$BUILD_TAG.exe
GOOS=linux GOARCH=386 go build -o $BASE_BUILD_DIR/minimula-linux32-$BUILD_TAG
GOOS=linux GOARCH=amd64 go build -o $BASE_BUILD_DIR/minimula-linux64-$BUILD_TAG