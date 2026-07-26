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

# --- the landing page carries the version too --------------------------------
#
# api/ is regenerated above and therefore always current. index.html is
# hand-written and is NOT, and it has now gone stale twice running: it still
# advertised v0.1.0 two releases later, was corrected to v0.3.0, and was stale
# again one release after that. For a page whose entire job is telling people
# what to download, a wrong version is worse than no version.
#
# So rewrite it here rather than trusting anyone to remember, and then assert
# that no other version string survived -- a silent no-op rewrite (a renamed
# badge, a new install example) is exactly how it went stale the last two times.

echo "==> stamping $VERSION into index.html"
PAGE="$HERE/index.html"
python3 - "$PAGE" "$VERSION" <<'PY'
import re, sys

path, version = sys.argv[1], sys.argv[2]
src = open(path, encoding='utf-8').read()

# Deliberately broad: every X.Y.Z on the page. The narrow alternatives all fail
# the same way -- a lookbehind excluding "-" skips `cnab-core-0.3.0.tgz`, which
# is one of the strings that actually went stale, and an explicit list of
# patterns cannot cover install examples nobody has written yet.
#
# Broad is only safe because of the assertion below: if the page ever gains a
# three-part version that is NOT the SDK's (a spec revision, a linked tool),
# this refuses to run rather than silently rewriting it. Two-part versions are
# untouched, so "Python 3.10" and ".NET 6.0" are unaffected by construction.
VERSION_RE = re.compile(r'\d+\.\d+\.\d+')

# The test is "exactly one distinct X.Y.Z on the page", NOT "nothing other than
# the new version" -- before stamping, the page legitimately still holds the
# PREVIOUS release, so the latter would fire on every ordinary run. If there is
# more than one distinct value, the script cannot tell which belongs to the SDK
# and must not guess.
found = set(VERSION_RE.findall(src))
if len(found) > 1:
    sys.exit(
        'error: index.html contains several distinct X.Y.Z versions, so the\n'
        "       stamp cannot tell which are the SDK's:\n         "
        + '\n         '.join(sorted(found))
        + '\n       Rewrite them by hand, or narrow this script.'
    )

src = VERSION_RE.sub(version, src)
open(path, 'w', encoding='utf-8').write(src)

remaining = set(VERSION_RE.findall(src)) - {version}
if remaining:
    sys.exit(f'error: index.html still mentions {sorted(remaining)} after stamping')
print(f'    stamped {len(VERSION_RE.findall(src))} version string(s) to {version}')
PY

echo
echo "synced api/ from CNAB-SDK v$VERSION — $(find "$HERE/api" -type f | wc -l) files"
echo "index.html stamped to v$VERSION"
echo "review the diff, then commit."
