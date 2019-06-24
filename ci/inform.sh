#!/bin/bash

set -e -u -x

export GOPATH=$PWD/depspath:$PWD/gopath
export PATH=$PWD/depspath/bin:$PWD/gopath/bin:$PATH

cd gopath/src/gopath/src/github.com/mchirico/cde

#cd cmd/cake

echo
echo "Fetching dependencies..."
go get -v -t ./...


echo
echo "Building..."
go build -v ./...

echo
echo "Smoke test..."
#./cake
