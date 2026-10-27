
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

本轮迁移要求 Calcit 与 `@calcit/procs` 同为正式版 0.31.0。页面的 Run、两处文本输入和按钮 400ms 反馈保持原行为；恢复旧存档成功后才注册自动保存，坏存档会中止启动，原文不会被默认状态覆盖。`hud!` 仍负责显示热更新状态与错误。

Store 的 `data` 仍允许原有的任意数据，嵌套 UI 状态仍允许异构 key；存档恢复会检查 Store 字段并重建本地记录。Copy 仅接受内置 `ToString` 标量（字符串、数字、布尔、Tag、Symbol 与 nil），不会把集合改为调试文本后复制。非法存档和不符合事件合同的值会在入口报错。

Development requires Calcit 0.31.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0:

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit test --require-match
calcit analyze quality --baseline config/calcit-quality.cirru
yarn build
node --test scripts/former-regression.test.mjs
```

`deps.cirru` pins published module tags. Reel, Respo and UI still use their
published alpha tags; pairing the CLI/runtime at 0.31.0 does not imply those
libraries have a stable release. Yarn retains a one-hour package age gate.

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
terminal for live edits. CI checks canonical formatting, all definitions, the
strict workflow, public namespaces, the unchanged quality baseline and business
tests. No additional project-specific verification runner is required.


- Demo of S-Expressions http://repo.cirru.org/data-former
- Prevous ClojureScript demo: http://repo.cirru.org/data-former.cljs/

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
