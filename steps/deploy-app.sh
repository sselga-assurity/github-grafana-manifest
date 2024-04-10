#!/usr/bin/env bash

# script copied from ird-cf-app-deployments with few mods

export CF_DIAL_TIMEOUT=30
${{secrets.GITHUB_WORKSPACE}}/cf login -a ${{ secrets.CF_API }} -u ${{secrets.CF_USERNAME}} -p ${{secrets.CF_PASSWORD}} -o ${{secrets.CF_ORG}} -s ${{secrets.CF_SPACE}}
${{secrets.GITHUB_WORKSPACE}}/cf push -f ${{secrets.GITHUB_WORKSPACE}}/manifests/${{secrets.APP_NAME}}.yml