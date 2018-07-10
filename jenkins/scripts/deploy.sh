#!/usr/bin/env sh

echo "Deploy.."
ng build --prod
angular-http-server --path dist/angular-starter &
sleep 1
echo $! > .pidfile
