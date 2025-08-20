#!/usr/bin/bash

# This script installs the necessary dependencies for the project.

### Install the package manager uv:
curl -LsSf https://astral.sh/uv/install.sh | sh

### Install the dependencies using uv:
uv sync

# TODO: check if uv venv has to be used and afterwards 'source .venv/bin/activate'

### Install the pre-commit hooks:
# FIXME it could be that activating the venv is necessary and then 'pre-commit install' should be run
uv run pre-commit install
