#!/bin/sh

CONTAINER_FIRST_STARTUP="CONTAINER_FIRST_STARTUP"
if [ ! -e /$CONTAINER_FIRST_STARTUP ]; then
    touch /$CONTAINER_FIRST_STARTUP
    ./manage.py migrate

    ./manage.py updatecatalog

    ./manage.py collectstatic
else
    echo
fi

# ./manage.py migrate

# ./manage.py updatecatalog

# ./manage.py collectstatic

./manage.py runserver ${BIND_HOST}:${BIND_PORT}