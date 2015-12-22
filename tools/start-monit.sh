#!/bin/bash

echo "Checking config"
monit -t -c /etc/monit-docker

echo "Starting Monit"
monit -c /etc/monit-docker -I
