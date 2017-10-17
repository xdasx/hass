#!/bin/bash

cd "/config"
git fetch
git rev-list --count master..origin/master
