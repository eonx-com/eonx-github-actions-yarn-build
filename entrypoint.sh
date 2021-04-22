#!/usr/bin/env bash
set -eo pipefail
cd "${GITHUB_WORKSPACE}/${INPUT_PATH}" || { echo "Could not find specified path"; exit 1; }
if [[ ! -z "${INPUT_NPM_TOKEN}" ]]; then
  echo "Exporting NPM token"
  export NPM_TOKEN="${INPUT_NPM_TOKEN}"
fi
yarn
yarn build
