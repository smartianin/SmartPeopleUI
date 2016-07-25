#!/usr/bin/env bash

set -e

# Verify that the libraries are error free.
dartanalyzer --fatal-warnings \
  lib/*.dart \
  test/*.dart