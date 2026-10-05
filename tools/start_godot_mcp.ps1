param(
    [string]$GodotBin = "$HOME\Downloads\Godot_v4.7.2-stable_win64.exe\Godot_v4.7.2-stable_win64.exe"
)

$env:GODOT_MCP_TRANSPORT = "http"
$env:GODOT_MCP_GODOT_BIN = $GodotBin

Write-Host "Godot MCP HTTP: http://127.0.0.1:9090/mcp"
Write-Host "Godot editor bridge: ws://127.0.0.1:9080"
Write-Host "Godot binary: $GodotBin"

godot-editor-mcp
