#!/bin/sh
git checkout fix
rm -rf main.py
git add .
git commit -m "delete main.py"

git checkout dev 
echo hihihihi >> main.py
git add .
git commit -m "haha"