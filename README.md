
Data former
----

> just turn syntax tree of Cirru data into Code

_TODO_

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.34.2**；升级后重新安装完整依赖图、生成 JS 并刷新页面。
使用已发布 UI **0.12.1**、Respo **0.18.1**、JS-FFI **0.2.9**、Reel **0.8.1**，
传递 Router **0.10.1**，整图使用正式 tag。

按钮样式现在直接保留 UI 的 `StyleValue` union（String / Number / Tag），删除一处
`Map Tag Dynamic` 强转。编译器确认合并后的样式为 `Map Tag StyleValue`，不再抹掉值类型。
开发环境 Reel 面板的可选子节点改为显式 Option，页面显示条件保持原样。

Run 转换、两处文本输入、400ms 按钮反馈、旧存档恢复和 HUD 保持。Store.data 仍接受
原任意数据，嵌套 UI 状态允许异构 key；恢复成功后才启用自动保存，坏存档保护保持。
Copy 仍只接受 ToString 标量。本次没有缩窄这些真实数据入口，也没有修改质量基线。

本地全部 **199** 个定义、完整 strict、原质量门禁、原 **2** 项附带测试、原 **6** 项
JS 回归及构建通过，Caps strict/toolchain 和 immutable 安装通过。与规范化后的原源码
逐定义对照，仅按钮样式和可选开发面板两处代码变化，其他 schema 和附带测试保持。
整合 Dependabot #22 的 undici **8.12.3** 锁文件补丁；原 Vite **8.3.3** 和 npm 发布
等待策略保持。不增加检查脚本，不提交生成 JS 或模块缓存。

此前 0.32.0 候选已验收 Run 将 `[] 1 2` 转为 `(1 2)` 及刷新恢复；本次尚未重跑浏览器，
未点击 Copy 或操作真实存档。本 PR 不合并、部署生产或发版；#22 暂保留以协调合并。

### 开发

使用Node24、Yarn4.18.0、Caps0.1.1和配对 Calcit 0.34.2：

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
