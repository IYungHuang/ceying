# 《測影》Codex 自訂 agent 安裝包

此目錄是**安裝來源檔**；Codex 不會自動從 `agent_profiles/` 載入。本專案目前已在 `.codex/agents/` 安裝兩份同名角色檔；下列步驟供重裝或搬移專案時使用，腳本遇到同名檔會保留原檔。

在本專案目錄的 macOS Terminal 執行：

```sh
./install-agent-profiles.sh
```

腳本只建立 `.codex/agents/`，複製 `continuity_editor.toml` 與 `novelist.toml`。遇到同名檔會保留原檔，不改 `~/.codex/config.toml` 或專案 `.codex/config.toml`。若 Terminal 仍回報 `Operation not permitted`，檢查目錄權限與管理政策；不要關閉 sandbox 或覆蓋既有設定。

安裝後確認：

```sh
ls -l .codex/agents/
```

啟動新 Codex session 時，在本專案目錄要求：「請以 continuity_editor 查證，再將核定基線交給 novelist；你任總編輯。」自訂 agent 檔只定義角色，仍需在任務中指派工作。[Codex 官方 Subagents 文件](https://learn.chatgpt.com/docs/agent-configuration/subagents)列出 `.codex/agents/` 路徑與必要欄位。
