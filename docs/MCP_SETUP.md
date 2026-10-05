# Godot MCP local setup

Current machine setup:

- Godot: 4.7.2 stable
- Godot MCP addon: addons/godot_mcp
- godot-editor-mcp: 2026.09.30
- MCP HTTP endpoint: http://127.0.0.1:9090/mcp
- editor bridge: ws://127.0.0.1:9080

The addon is enabled in project.godot.

## Start local MCP server

PowerShell:

```powershell
$env:GODOT_MCP_TRANSPORT="http"
$env:GODOT_MCP_GODOT_BIN="$HOME\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe"
godot-editor-mcp
```

Then open this project in Godot. The editor addon reconnects to the bridge automatically.

## Health check

Expected local state:
- TCP 9090 LISTEN
- TCP 9080 LISTEN
- one ESTABLISHED localhost connection on 9080 while the editor plugin is connected

Do not expose these ports to the public internet for this local workflow.
