#!/bin/sh
> dev.py 
> fix.py
git checkout --orphan latest_branch
git add -A
git commit -am "commit message"
git branch -D main
git branch -m main
git push -f origin main
git branch -D dev 
git branch -D fix
git branch -D test
git branch -D update