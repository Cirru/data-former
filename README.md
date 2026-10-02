
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

Development requires Calcit 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0:

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn build
node --test scripts/former-regression.test.mjs
```

Use only `calcit.cirru` and `deps.cirru`; do not restore retired
`compact.cirru` and `package.cirru` snapshots. CI uploads and publicly verifies
only frontend `dist/` at `https://cos-sh.tiye.me/Cirru/data-former/`, with a
separate `pr/<number>/<run-id>/<attempt>/` prefix for previews. Released COS action
v1.2.0 performs HTML reference and public upload verification without an extra
checker. Runs queue per PR and separately for production, without cancellation.
The original `dist/*` rsync source and
server destination are unchanged.

`yarn build` compiles the default JS browser entry and builds once; `yarn dev`
compiles initially and starts Vite. Run `calcit calcit.cirru -w` in another
terminal for live edits. Canonical/entry/public, original quality baseline and
business tests remain; repeated migration and diagnostic reports are removed.


- Demo of S-Expressions http://repo.cirru.org/data-former
- Prevous ClojureScript demo: http://repo.cirru.org/data-former.cljs/

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
