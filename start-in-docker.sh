#!/bin/bash
cd /home/node/app
pwd
echo "Installing dependencies"
npm install --verbose
echo "Start server"
ng serve --host 0.0.0.0 --disable-host-check