#!/usr/bin/env bash

# script copied from ird-cf-app-deployments with few mods

export CF_DIAL_TIMEOUT=30
${GITHUB_WORKSPACE}/cf login -a https://api.sys.ap.assurity.cloud/ -u 0f92c60f-d158-47b2-99db-c25bce7faf43 -p IA8rzOBz-le+ENLtN8Icd6,3pr34CnIb -o msd -s ctaas
${GITHUB_WORKSPACE}/cf push
