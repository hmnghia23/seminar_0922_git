#!/bin/sh
git checkout -b test 
echo d4 = 9 >> dev.py
git add .
git commit -m "add d4 branch test"
git log --oneline

git checkout dev 
git checkout -b update
echo d5 = 7 >> dev.py
git add .
git commit -m "add d5 branch update"
git log --oneline

git checkout dev