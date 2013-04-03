#!/usr/bin/env bash

. /opt/elasticbeanstalk/support/envvars

cd $EB_CONFIG_APP_CURRENT && script/delayed_job --pid-dir=/var/app/support/pids restart