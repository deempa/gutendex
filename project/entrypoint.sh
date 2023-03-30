#!/bin/bash

./manage.py migrate

./manage.py updatecatalog

./manage.py collectstatic

./manage.py runserver ${BIND_HOST}:${BIND_PORT}