#!/usr/bin/env bash

set -e
set -x

mypy fastapi_template
flake8 fastapi_template tests
black fastapi_template tests --check
isort fastapi_template tests scripts --check-only