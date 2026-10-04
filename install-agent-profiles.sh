#!/bin/sh
set -eu

project_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
target_dir="$project_dir/.codex/agents"
mkdir -p "$target_dir"

for source_file in "$project_dir"/agent_profiles/*.toml; do
    target_file="$target_dir/$(basename "$source_file")"
    if [ -e "$target_file" ]; then
        printf '保留既有檔案：%s\n' "$target_file"
    else
        cp -n "$source_file" "$target_file"
        printf '已安裝：%s\n' "$target_file"
    fi
done
