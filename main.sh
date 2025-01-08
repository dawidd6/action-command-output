#!/usr/bin/env bash

set -euo pipefail

delimiter="$(openssl rand -hex 32)"
output="$(bash -c "${1}" 2>&1 | tee /dev/stderr)"

echo "output<<${delimiter}" >> "${GITHUB_OUTPUT}"
echo "${output}" >> "${GITHUB_OUTPUT}"
echo "${delimiter}" >> "${GITHUB_OUTPUT}"
