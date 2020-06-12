#!/usr/bin/env bash
set -euo pipefail

hugo --minify 
git stash
cd public
git add .
git commit -m "Automatically deployed by deploy.sh"
git push origin master
cd ..
git stash pop
