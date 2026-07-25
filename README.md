# cnab.github.io

The public site for the [CNAB SDK](https://github.com/cnab/CNAB-SDK), served at
**https://cnab.github.io/**.

```
index.html              hand-written landing page (overview, language support,
                        coverage, quick start)
api/                    GENERATED TypeDoc API reference -> https://cnab.github.io/api/
tools/sync-api-docs.sh  regenerates api/ from a CNAB-SDK checkout
.nojekyll               serve files verbatim; do not run Jekyll over them
```

## How this publishes

This is an **organisation Pages repository**. GitHub serves `<org>.github.io`
from the root of its default branch automatically — there is no workflow here and
no Pages setting to switch on. Push to the default branch and it is live within a
minute or two.

That is deliberate. The project-page route
(`cnab.github.io/CNAB-SDK/`, built by `pages.yml` in the SDK repo) needs Pages to
be explicitly enabled for that repo, which is why it silently failed for its
first seven runs.

## Updating the API reference

`api/` is **generated output that is committed**, so it does not update itself.
After a release:

```bash
git clone https://github.com/cnab/CNAB-SDK ../CNAB-SDK   # if you don't have it
./tools/sync-api-docs.sh ../CNAB-SDK
git add api && git commit -m "docs: sync API reference to vX.Y.Z"
```

The script refuses to publish a broken or empty tree: it runs `build:spec` before
`docs` (without it TypeDoc cannot resolve `./spec.generated` and emits nothing),
and then asserts `index.html` plus a page for each of the six engine classes.

Automating this across repos needs a token with write access here, which is
tracked in [CNAB-SDK#19](https://github.com/cnab/CNAB-SDK/issues/19). Until then
it is a deliberate manual step at release time.

## Editing the landing page

`index.html` is deliberately a single self-contained file — no build, no
dependencies, no framework. It follows the reader's light/dark preference and
carries its own styles. Keep the numbers in it (version, record counts, test
counts, supported language versions) in sync with the SDK; they are claims about
the software, and stale claims are worse than absent ones.
