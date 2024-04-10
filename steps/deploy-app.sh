#!/usr/bin/env bash

# script copied from ird-cf-app-deployments with few mods

CF_API="${{ secrets.CF_API }}"
CF_USERNAME="${{ secrets.CF_USERNAME }}"
CF_PASSWORD="${{ secrets.CF_PASSWORD }}"
CF_ORG="${{ secrets.CF_ORG }}"
CF_SPACE="${{ secrets.CF_SPACE }}"

export CF_DIAL_TIMEOUT=30
cf login -a ${CF_API} -u ${CF_USERNAME} -p ${CF_PASSWORD} -o ${CF_ORG} -s ${CF_SPACE}
cf push
