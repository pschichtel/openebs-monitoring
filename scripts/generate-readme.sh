#!/usr/bin/env bash

SCRIPTDIR=$(dirname "$0")
ROOTDIR="$(realpath $SCRIPTDIR/..)"
CHART_DIR="$ROOTDIR/deploy/charts"
README="README.md"
SKIP_GIT=${SKIP_GIT:-}

set -euo pipefail

helm-docs -c "$ROOTDIR" -g "$CHART_DIR" -o $README


if [ -z "$SKIP_GIT" ]; then
  git diff --exit-code "$CHART_DIR/$README"
fi
