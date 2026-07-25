#!/usr/bin/env bash
#
# Regenerate api/ from the CNAB-SDK sources.
#
# The API reference under api/ is generated output committed into this repo,
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

if [ ! -f "$SDK/typedoc.json" ]; then
  echo "error: no typedoc.json under $SDK — pass the path to the CNAB-SDK checkout" >&2
  exit 1
fi

cd "$SDK"
echo "==> building spec (emits packages/core/src/spec.generated.ts)"
# Required: spec.generated.ts is gitignored in the SDK, and index.ts imports it.
# Skipping this is what made every Pages run fail with "Cannot find module".
npm run build:spec

echo "==> generating typedoc site/"
rm -rf site
npm run docs

test -f site/index.html || { echo "error: typedoc produced no index.html" >&2; exit 1; }
for c in CnabRecord CnabSpec CnabFile CnabFileBuilder Boleto Modulo; do
  test -f "site/classes/$c.html" || { echo "error: no page generated for $c" >&2; exit 1; }
done

VERSION="$(node -p "require('./packages/core/package.json').version")"

echo "==> copying into $HERE/api"
rm -rf "$HERE/api"
mkdir -p "$HERE/api"
cp -r site/. "$HERE/api/"

echo
echo "synced api/ from CNAB-SDK v$VERSION — $(find "$HERE/api" -type f | wc -l) files"
echo "review the diff, then commit."
