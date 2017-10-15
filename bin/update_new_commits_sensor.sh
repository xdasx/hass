#!/bin/bash

cd "/home/homeassistant/.homeassistant"
git fetch
commits="$(git rev-list --count master..origin/master)"

curl -X POST -H "x-ha-access: $1" -H "Content-Type: application/json" http://192.168.31.108:8123/api/states/sensor.new_commits -d "{\"state\": \"$commits\"}"
