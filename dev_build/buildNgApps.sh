#!/bin/bash
ng2apps=( `find angular -maxdepth 1 -mindepth 1 -type d -printf '%f '` )
  for ng2app in "${ng2apps[@]}"
  do
    if [ "$ng2app" != "shared" ]; then
      if [ "$ng2app" != "e2e" ]; then
        if [ "$ng2app" != "node_modules" ]; then
          echo "Bundling ${ng2app}"
          bundleNg2App $ng2app
        fi
      fi
    fi
  done