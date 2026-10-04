# Codex 環境與設定盤點

盤點日期：2026-10-03。

- 本機 `codex --version`：`codex-cli 0.160.0`。
- `codex features list`：`multi_agent` 顯示 `stable true`；本次已成功開啟兩個獨立子agent session。
- 原專案目錄起初為空，無既有 `AGENTS.md`、`.codex/config.toml` 或 agent 設定；以下檔案是專案建立後的現況。
- 使用者層級 `~/.codex/AGENTS.md` 為空檔；`~/.codex/config.toml` 有既有模型、外掛與其他設定，無 `[agents]` 區塊；未修改。
- 查無 `~/.codex/agents/` 既有自訂角色。依 [Codex 官方 Subagents 文件](https://learn.chatgpt.com/docs/agent-configuration/subagents)，專案角色可放在 `.codex/agents/` 的獨立 TOML 檔。建立專案時此工作環境曾拒絕建立該隱藏目錄，後由使用者在本機安裝；本輪 `ls -l .codex/agents/` 已確認 `continuity_editor.toml`、`novelist.toml` 存在，且與 [agent_profiles](../agent_profiles/README.md) 來源檔逐字相同。兩檔均有 `name`、`description`、`developer_instructions` 三項必要欄位。本輪未修改 `.codex/agents/` 或既有全域設定。
- 兩角色可供新 Codex session 按名稱指派；檔案存在不會自行啟動工作。已開啟的 session 是否在啟動時載入檔案，不能僅憑目錄存在倒推；本專案亦以 [角色配置](roles.md) 與當次任務指令交接。
