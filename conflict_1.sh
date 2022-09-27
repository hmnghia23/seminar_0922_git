#!/bin/sh
git checkout fix 
echo d4 = 7 >> dev.py
git add .
git commit -m "add d4 branch fix"
git log --oneline

git checkout dev 
echo d4 = 9 >> dev.py
git add .
git commit -m "add d4 branch dev"
git log --oneline