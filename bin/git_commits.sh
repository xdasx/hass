#!/bin/bash

cd "/config"
git fetch
git rev-list --count dev..origin/dev
