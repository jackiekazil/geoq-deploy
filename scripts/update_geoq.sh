#!/bin/sh


cd /home/ubuntu/code/geoq
source /home/ubuntu/.virtualenvs/geoq/bin/activate
export DJANGO_SETTINGS_MODULE='geoq.settings'
echo "DJANGO_SETTINGS_MODULE set to:" $DJANGO_SETTINGS_MODULE

git pull origin
paver sync
django-admin.py collectstatic
bash /home/ubuntu/code/geoq-deploy/scripts/restart_geoq.sh

