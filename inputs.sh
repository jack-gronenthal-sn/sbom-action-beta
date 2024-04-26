#!/bin/sh -l

REPOSITORY_SOURCE_STRATEGY="repository"

ERR_MSG__MISSING_SBOM_DIRECTORY="When using the repository SBOM selection strategy, an SBOM source directory must be provided."

echo "::group::SBOM Integration Inputs"

# Validate
if [ "$SBOM_SOURCE_STRATEGY" = "$REPOSITORY_SOURCE_STRATEGY" ]; then
  if [ -z "$SBOM_SOURCE_DIRECTORY" ]; then
    echo "::error title=Missing SBOM Source Directory::$ERR_MSG__MISSING_SBOM_DIRECTORY"
    exit 2
  fi

    ls "$GITHUB_ACTION_PATH"
    realpath .
    ls -A ..
    ls -A
    if ! [ -d "$DIRECTORY_PATH" ]; then
        echo "Target directory does not exist" # Add error
      else
        echo "Target directory exists!"
            echo "::notice title=Source Selection Strategy::Source Type: REPOSITORY | Source Path: $SBOM_SOURCE_DIRECTORY"
    fi
fi

echo "::endgroup::"