#!/bin/sh
#git remote add upstream git@github.com:jiansoung/quotesbot.git
git fetch upstream
git checkout master
git merge upstream/master -m "-"
git push
