#!/bin/bash
files=("account.json" "min_order_sizes.json" "research.json" "settings.json")

#copy files to the config root if they don't already exist
if [[ -z "${CONFIG_ROOT}" ]]; then
    for item in "${files[@]}"
    do
        echo "Processing ${item}..."
        if [ -f "./$item" ]; then
            cp "./${item}" "${CONFIG_ROOT}/${item}"
        fi
else
  MY_SCRIPT_VARIABLE="${DEPLOY_ENV}"
fi