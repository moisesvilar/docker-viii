#!/bin/bash

echo "xdebug.remote_host=${XDEBUG_REMOTE_HOST}" >> /etc/php.ini

# Make sure we're not confused by old, incompletely-shutdown httpd
# context after restarting the container.  httpd won't start correctly
# if it thinks it is already running.
rm -rf /run/httpd/* /tmp/httpd*

exec /usr/sbin/apachectl -DFOREGROUND
