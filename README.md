# cot_truyen_game

Godot production repository for the first-person narrative mystery project.

## Current state

Bootstrap only. No production gameplay systems are implemented yet.

Narrative/source-of-truth lives in:
- https://github.com/phambac2k701-blip/cot_truyen
- Production reading order: see that repo's README_PRODUCTION.md
- Narrative validation status: FINAL_NARRATIVE_REAUDIT.md

## Project rules

1. Do not rewrite narrative contracts from this repository.
2. FULL_SCRIPT.md defines intended player experience.
3. EVENT_IMPLEMENTATION_SPEC.md defines authored event/state behavior.
4. CLUE_GRAPH.md, OBJECTIVE_TIMELINE.md, ENDING_LOGIC.md control evidence, time, endings.
5. SCENE_ASSET_MANIFEST.md controls asset requirements.
6. Keep raw imported assets separate from game-ready wrappers.
7. Prefer reusable Godot components over duplicated scene-specific logic.
8. Test new systems in scenes/prototype/ before using them across S01-S18.

## First production milestone

Build an MCP/playtest sandbox:
player interaction -> door state -> light event -> document inspect -> authored release -> save/load -> replay safety.
