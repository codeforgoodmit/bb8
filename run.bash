#!/usr/bin/env bash

set -eu

source ./env
while true; do
  bin/hubot -a slack
done
