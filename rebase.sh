#!/usr/bin/env bash
set -ex
BRANCH="${1?Please specify a branch or tag}"
echo "Rebasing from ${BRANCH}..."
git fetch --tags origin ${BRANCH}
git rebase ${BRANCH}