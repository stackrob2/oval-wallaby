#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://rob-stackbit.ngrok.io/pull/601243187b83d1713b2996c9

# build site
npm run build

echo "stackbit-build.sh: finished build"
