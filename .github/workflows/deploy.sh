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
echo "Thanh 1"
git remote add origin "https://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@github.com/thanhinterpol/vuejs_demo.git"
git remote -v

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:thanhinterpol/thanhinterpol.github.io.git main
echo "Thanh 2"
# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push origin main
echo "Thanh 3"
cd -