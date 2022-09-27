#!/bin/sh
git checkout -b dev
echo d1 = 2 >> dev.py
git add .
git commit -m "add d1"
echo d2 = 4 >> dev.py
git add .
git commit -m "add d2"

git checkout main 

git checkout -b fix
echo f1 = 6 >> fix.py
git add .
git commit -m "add f1"
echo f2 = 8 >> fix.py
git add .
git commit -m "add f2"
echo f3 = 10 >> fix.py
git add .
git commit -m "add f3"

git checkout dev 
echo d3 = 5 >> dev.py
git add .
git commit -m "add d3"

git checkout fix 
git log --oneline
git checkout dev 
git log --oneline