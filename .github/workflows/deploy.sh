#!/usr/bin/env sh

# abort on errors
set -e

# build
rm -rf dist docs
npm run build

# copy built folder to target

cp -a dist/. docs/
git add docs/*
git commit -m 'deploy'
# deploying to https://<USERNAME>.github.io/<REPO>
git push origin main

cd /