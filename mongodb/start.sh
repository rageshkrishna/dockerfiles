#!/bin/bash
EXPORT LC_ALL=C
supervisord -c /supervisor.conf -n
