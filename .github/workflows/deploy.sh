#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'
git branch -M main
git remote add origin https://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@github.com/thanhinterpol/vuejs_demo.git

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:thanhinterpol/thanhinterpol.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push https://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@github.com/thanhinterpol/vuejs_demo.git main:gh-pages

cd -