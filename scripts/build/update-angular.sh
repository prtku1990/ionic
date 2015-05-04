#!/bin/sh

NG_FOLDER=node_modules/angular-master

cd $(dirname $0)/../../

$(test -e $NG_FOLDER) || (git clone git@github.com:angular/angular $NG_FOLDER)

cd $NG_FOLDER
echo "Pulling from master.."
git pull origin master

echo "Running npm install in angular2..."
npm install

echo "Running gulp to build source..."
gulp clean
gulp build.js

echo "--"
echo "-- DONE, gulp will work now --"
echo "--"