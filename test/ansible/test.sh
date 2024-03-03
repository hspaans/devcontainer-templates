#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "ansible" ansible --version
check "ansible-lint" ansible-lint --version
check "yamllint" yamllint --version

# Report result
reportResults
