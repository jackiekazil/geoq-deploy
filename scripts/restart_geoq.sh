#!/bin/sh

sudo stop uwsgi
sudo start uwsgi
sudo /etc/init.d/nginx restart