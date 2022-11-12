#!/usr/bin/env bash

set -e
set -x

mypy spock
flake8 spock tests
black spock tests --check
isort spock tests scripts --check-only