#!/bin/bash

#copy files to the config root if they don't already exist
echo "Processing config files..."
if [[ ! -v CONFIG_ROOT ]]; then
  echo "Custom config root NOT set, copying fresh files if they don't already exist..."
  cp -u /app/config_templates/*.json /app/
else
  echo "Custom config root set, copying fresh files if they don't already exist..."
  cp -u /app/config_templates/*.json $CONFIG_ROOT/
fi

pm2-runtime /app/app.js