#!/bin/bash
rm -R git_blame_data || true
git clone "https://gerrit.wikimedia.org/r/operations/mediawiki-config"
cd mediawiki-config
mkdir git_blame_data
git blame dblists/all.dblist > git_blame_data/all.txt
git blame dblists/closed.dblist > git_blame_data/closed.txt
git blame dblists/private.dblist > git_blame_data/fishbowl.txt
git blame dblists/private.dblist > git_blame_data/private.txt
mv git_blame_data ..
cd ..
yes | rm -r mediawiki-config