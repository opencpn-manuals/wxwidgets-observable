#!/bin/bash
#
# Build an HTML manual using Doxygen and deploy to Github Pages
#
#
set -xe

# Some hard-coded assumptions:
readonly SITE_DIR='docs'           # Antora output directory
readonly GP_BRANCH='gh-pages'      # Branch used as input by Github Pages

# Build site and block github's default jekyll formatting'
sudo apt install -y doxygen
doxygen
touch $SITE_DIR/.nojekyll

# Set up a git environment in $SITE_DIR
author_email=$(git log -1 --pretty=format:"%ae")
git remote add manual-src \
    https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY
git config --local user.email "$author_email"
git config --local user.name "$GITHUB_ACTOR"

# Commit changes and push to $GP_BRANCH
git checkout -b $GP_BRANCH
git add --force docs
git commit -q -m "[CI] Updating $GP_BRANCH branch from ${GITHUB_SHA:0:8}"
git push -f manual-src $GP_BRANCH:$GP_BRANCH
