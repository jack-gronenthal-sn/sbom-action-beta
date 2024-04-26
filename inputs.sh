#!/bin/sh -l

REPOSITORY_SOURCE_STRATEGY="repository"
ERR_MSG__MISSING_SBOM_DIRECTORY="When using the repository SBOM selection strategy, an SBOM source directory must be provided."

echo "::group::SBOM Integration Inputs"

if [ "$SBOM_SOURCE_STRATEGY" = "$REPOSITORY_SOURCE_STRATEGY" ]; then
  if [ -z "$SBOM_SOURCE_DIRECTORY" ]; then
    echo "::error title={Missing SBOM Source Directory}::{$ERR_MSG__MISSING_SBOM_DIRECTORY}"
  fi
    echo "Hurray! $SBOM_SOURCE_DIRECTORY, $SBOM_SOURCE_STRATEGY"
fi

echo "::endgroup::"