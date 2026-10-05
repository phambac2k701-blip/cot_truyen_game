# Project structure

- autoload/ — future global state/event/save services.
- components/interactables/ — reusable doors, documents, phones, drawers, lights.
- components/triggers/ — reusable Area3D/event trigger building blocks.
- components/npc/ — reusable NPC base scenes/controllers.
- components/audio/ — reusable audio/event helpers.
- scenes/prototype/ — isolated production experiments and MCP playtest rooms.
- scenes/hubs/ — production world/hub scenes.
- scripts/ — shared scripts not owned by one component.
- assets/raw/ — untouched sourced/generated originals.
- assets/game_ready/ — normalized assets ready for Godot.
- audio/ — project audio.
- ui/ — UI scenes/resources/art.
- data/events/ — future authored event data/resources.
- data/clues/ — future clue/state data/resources.
- tests/ — automated state/component/regression tests.
- addons/ — Godot addons such as MCP/test plugins.

Do not put gameplay logic directly in imported GLB files. Wrap visuals in reusable .tscn scenes.
