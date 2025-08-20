# This script installs the necessary dependencies for the project using PowerShell.

# Install the package manager uv:
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/0.7.17/install.ps1 | iex"

# Install the dependencies using uv:
uv sync

# Install the pre-commit hooks:
uv run pre-commit install
