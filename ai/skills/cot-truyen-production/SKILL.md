# cot-truyen-production

Use this skill when implementing or testing the Godot game in this repository.

## Authority

Narrative source-of-truth is the separate repository:
https://github.com/phambac2k701-blip/cot_truyen

Before implementing an authored scene, read that repository's:
1. README_PRODUCTION.md
2. SCENE_BREAKDOWN.md
3. FULL_SCRIPT.md
4. EVENT_IMPLEMENTATION_SPEC.md
5. SCENE_ASSET_MANIFEST.md

For evidence/time/endings also read:
- CLUE_GRAPH.md
- OBJECTIVE_TIMELINE.md
- ENDING_LOGIC.md

Do not rewrite narrative contracts to make implementation easier.

## Required implementation loop

For each gameplay task:

1. Inspect the current Godot project and active scene before editing.
2. Identify the exact authored event/component being implemented.
3. Make the smallest reusable change that satisfies the spec.
4. Keep imported raw assets separate from game-ready wrappers.
5. Parse/check changed GDScript and scene resources.
6. Run the smallest relevant prototype/scene.
7. Simulate the player action that reaches the changed behavior.
8. Inspect runtime state after the action.
9. Check logs/errors.
10. Test one-shot/repeat behavior where relevant.
11. Test save/load when persistent state is involved.
12. Capture/inspect a screenshot when presentation matters.
13. Run regression tests relevant to the changed component.
14. Commit only after the targeted behavior passes.

## Project invariants

- No magic clues.
- No NPC omniscience.
- Player observation, player inference, source existence, source receipt, authentication and police custody are distinct.
- Police custody does not disappear because the player leaves, reloads or talks to someone later.
- Reading/UI/private hypotheses must not secretly advance authored objective time.
- An authored one-shot event must not replay after a save/load unless explicitly specified.
- Optional discoveries never become automatically seen.
- S17 room state must never unlock because a clue counter reaches a number.
- S18 resolves existing state; it must not create evidence.

## Reusable component rule

Prefer shared components over scene-specific duplicates:
- doors -> DoorInteractable
- documents -> DocumentInteractable / compare viewers
- lights -> LightController
- drawers -> DrawerInteractable
- phones -> PhoneInteractable
- event triggers -> reusable trigger component
- NPC visuals -> shared NPC base + authored route/state

Never put gameplay logic directly inside imported GLB files. Wrap them in .tscn scenes.

## Prototype-first rule

Before wiring a new systemic feature into S01-S18, prove it in scenes/prototype/.

Current first milestone:
player interaction -> door state -> light event -> document inspect -> authored release -> save/load -> replay safety.
