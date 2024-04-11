#!/usr/bin/env bash

# script copied from ird-cf-app-deployments with few mods

set -e

: ${CF_API:?required}
: ${CF_USERNAME:?required}
: ${CF_PASSWORD:?required}
: ${CF_ORG:?required}
: ${CF_SPACE:?required}
: ${GITHUB_WORKSPACE:?required}

export CF_DIAL_TIMEOUT=30
${GITHUB_WORKSPACE}/cf login -a ${CF_API} -u ${CF_USERNAME} -p ${CF_PASSWORD} -o ${CF_ORG} -s ${CF_SPACE}
${GITHUB_WORKSPACE}/cf push
