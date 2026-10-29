
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

### Calcit 0.32.0 迁移候选：使用者影响

CLI/procs 配对正式 0.32.0，需重新安装依赖、生成 JS 并刷新。
UI 模块暂用本地候选，正式标签整图仍待验收；不改变数据转换、存档恢复、
400ms 按钮反馈、Copy 标量合同或 `hud!` 行为。

官方转换五处类型写法，19 个定义 schema 不变；原 strict、质量基线、
附带测试和 JS 回归保留。Actions 改用已核对对应提交的精确正式 tag，
沿用 COS 内置 verify 与原前端路径。

本地完整 strict（diagnostics 为空）、全部 196 个定义、公开命名空间 19 个定义、
原两项附带测试、六项 JS 回归、未改动的质量基线、构建及 immutable 安装通过。
实际 Run 将 `[] 1 2` 转为 `(1 2)`，刷新后输入和结果保留，浏览器 warn/error 为空。
未调用 Copy，不操作真实存档；独立只读评审无待处理问题。
质量命令在 0.32.0 提示弃用，本次仍保留原门禁；正式依赖整图和 PR/Linux CI 待验收。
下方 0.31 说明为历史记录。

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
