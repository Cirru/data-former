
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

### 使用者影响

升级到 Calcit **0.42.1** 后，请重新安装依赖、生成 JS 并刷新页面。原存档可以继续打开，
Run、文本输入、复制、错误 HUD 和开发模式的 Reel 面板沿用原有行为。

Reel 使用 `State<Op, Store>`，按钮和文本框通过 Respo 的类型化事件派发具名 `Op`。应用派发使用 `Op | reel.typed/Control`，旧面板事件只在渲染入口解码。按钮路径使用 `CoordKey` union，局部状态使用 `Map Tag Bool`。
复制边界以 `CopyScalar` 表示 String、Number、Bool、Tag、Symbol，空值仍复制为空字符串，
复合数据仍会报错。新输出操作只接收 `String`，包括 Run 的格式化结果和输出文本框输入。`Store.data` 保留对任意旧存档数据的支持，恢复成功后才启用自动保存。

配对正式 `@calcit/procs` **0.42.1**、Respo **0.19.5**、Reel **0.11.0**、UI **0.15.2**、
JS-FFI **0.2.13**，传递依赖 Router **0.12.2**。

### 开发

使用 Node 24、Yarn 4.18.0、Caps 0.1.1 和配对 Calcit 0.42.1：

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit test --require-match
yarn build
node --test scripts/former-regression.test.mjs
```

CI 使用 `analyze weak-types` 执行原质量上限。仅初始 Store 允许一处未解决的 nil，其余项目代码的弱类型、覆盖缺口和弃用调用上限为零。

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
strict workflow, public namespaces, the project quality baseline and business
tests. No additional project-specific verification runner is required.


- Demo of S-Expressions http://repo.cirru.org/data-former
- Prevous ClojureScript demo: http://repo.cirru.org/data-former.cljs/

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### License

MIT
