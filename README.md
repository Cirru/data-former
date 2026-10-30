
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.32.1**，升级后重新安装完整依赖图、生成JS并
完整刷新。使用已发布UI **0.9.0**、Respo **0.17.1**、JS-FFI **0.2.9** 和Reel
**0.7.0-alpha.5**；传递Router仍有alpha，不宣称整图全部稳定，不使用本地候选或hash。

官方工具转换五处旧类型标注，19个定义schema保持。Run转换、两处文本输入、400ms
按钮反馈、旧存档恢复和HUD不变。Store.data仍接受原任意数据，嵌套UI状态允许异构key；
恢复时检查字段并重建本地Store，成功后才注册自动保存，坏存档中止启动且不覆盖原文。
Copy仍只接受ToString标量，不把集合改为调试文本后复制。

保留原完整strict、全定义/公开合同、原质量基线、两项附带测试和六项JS回归，不新增
脚本、预算或强转。真实Caps strict/toolchain、上述门禁、构建和immutable安装通过。
整合已有Dependabot兼容补丁：Vite **8.3.3**、undici **8.12.3**、source-map-js **1.2.2**；
一小时npm发布等待保持，无单包例外。忽略本机.calcit缓存，不提交生成JS或模块链接。

此前0.32.0候选已验收Run将 `[] 1 2` 转为 `(1 2)` 及刷新恢复，本次未重跑浏览器，
未点Copy或操作真实存档。本PR不合并、部署或发版；现有Dependabot PR暂保留。

### 开发

使用Node24、Yarn4.18.0、Caps0.1.1和配对Calcit0.32.1：

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
