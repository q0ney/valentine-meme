#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'Deployment'
git push -f git@github.com:q1yxyz/q1yxyz.github.io.git master:gh-pages

cd -