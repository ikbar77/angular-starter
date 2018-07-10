#!/usr/bin/env sh

ng build --prod
angular-http-server --path dist/angular-starter &
sleep 1
echo $! > .pidfile
