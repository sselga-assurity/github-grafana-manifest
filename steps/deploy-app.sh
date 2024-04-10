#!/usr/bin/env bash

# script copied from ird-cf-app-deployments with few mods

export CF_DIAL_TIMEOUT=30
cf login -a https://api.sys.ap.assurity.cloud/ -u IA8rzOBz-le+ENLtN8Icd6,3pr34CnIb -p IA8rzOBz-le+ENLtN8Icd6,3pr34CnIb -o msd -s ctaas
cf push
