#!/usr/bin/env bash
#
# Regenerate api/ from the CNAB-SDK sources.
#
# The API reference under api/ is generated output committed into this repo,
# with one sub-directory per language (typescript/, python/, java/, csharp/),
# because <org>.github.io serves straight from the default branch and this repo
# has no build step of its own. It therefore goes stale unless someone runs this
# after a release.
#
#   ./tools/sync-api-docs.sh [path-to-CNAB-SDK]
#
# Defaults to ../CNAB-SDK. Fails loudly rather than committing a half-built or
# empty site: publishing an empty docs tree looks like success.

set -euo pipefail

SDK="${1:-../CNAB-SDK}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ! -f "$SDK/tools/build-api-docs.mjs" ]; then
  echo "error: $SDK does not look like a CNAB-SDK checkout (no tools/build-api-docs.mjs)" >&2
  echo "usage: $0 [path-to-CNAB-SDK]" >&2
  exit 1
fi

cd "$SDK"
echo "==> building spec (emits packages/core/src/spec.generated.ts)"
# Required: spec.generated.ts is gitignored in the SDK, and index.ts imports it.
# Skipping this is what made every Pages run fail with "Cannot find module".
npm run build:spec

echo "==> generating the multi-language API reference"
rm -rf site
npm run docs

# One page per shipped language, generated from the .jsii assembly so each
# carries that language's real signatures. typedoc used to build this and
# documented all four languages with TypeScript's API.
test -f site/index.html || { echo "error: no index.html produced" >&2; exit 1; }
for lang in typescript python java csharp; do
  test -f "site/$lang/index.html" \
    || { echo "error: no API reference generated for $lang" >&2; exit 1; }
done
grep -q "set_decimal" site/python/API.python.md \
  || { echo "error: python reference is not snake_case" >&2; exit 1; }

VERSION="$(node -p "require('./packages/core/package.json').version")"

echo "==> copying into $HERE/api"
rm -rf "$HERE/api"
mkdir -p "$HERE/api"
cp -r site/. "$HERE/api/"

echo
echo "synced api/ from CNAB-SDK v$VERSION — $(find "$HERE/api" -type f | wc -l) files"
echo "review the diff, then commit."
