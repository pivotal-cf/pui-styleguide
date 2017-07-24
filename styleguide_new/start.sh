#!/usr/bin/env bash

printf 'Rebuild Pivotal UI library code? [y/N]: '
read input

if [[ "$input" == "y" || "$input" == "Y" ]]; then
  pushd ../library
    yarn install --no-progress
    gulp build
  popd
fi

rm -rf node_modules
yarn install --no-progress
./node_modules/.bin/webpack --config ./backend_webpack.config.babel.js --progress -p
./node_modules/.bin/webpack --config ./frontend_webpack.config.babel.js --progress -p

npm run watch