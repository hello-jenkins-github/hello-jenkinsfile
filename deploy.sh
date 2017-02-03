#!/bin/bash

set -e -u

echo -n 'uploading darwin artifact => '
curl -s chunk.io -T hello-jenkinsfile.darwin.amd64
echo -n 'uploading linux artifact => '
curl -s chunk.io -T hello-jenkinsfile.linux.amd64
