#!/bin/bash

set -e -u

GOOS=darwin GOARCH=amd64 go build -o hello-jenkinsfile.darwin.amd64
GOOS=linux GOARCH=amd64 go build -o hello-jenkinsfile.linux.amd64
