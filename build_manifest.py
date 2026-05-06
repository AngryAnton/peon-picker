#!/usr/bin/env python3
"""Walk ~/.openpeon/packs and produce a flat manifest.json for the picker page."""
import json
import sys
from pathlib import Path

PACKS_DIR = Path.home() / ".openpeon" / "packs"
OUT_PATH = Path(__file__).parent / "manifest.json"

CATEGORY_ORDER = [
    "session.start",
    "task.acknowledge",
    "task.complete",
    "task.error",
    "input.required",
    "resource.limit",
    "user.spam",
]

CATEGORY_LABEL = {
    "session.start": "Session start",
    "task.acknowledge": "Task acknowledged",
    "task.complete": "Task complete",
    "task.error": "Task error",
    "input.required": "Permission / input needed",
    "resource.limit": "Resource limit hit",
    "user.spam": "User spam",
}

PACK_GROUP = {
    "peon": "Warcraft", "peasant": "Warcraft", "wc2_peasant": "Warcraft",
    "wc2_human_ships": "Warcraft", "murloc": "Warcraft",
    "protoss": "StarCraft 1",
    "sc_goliath": "StarCraft 1", "sc_marine": "StarCraft 1", "sc_scv": "StarCraft 1",
    "sc_kerrigan": "StarCraft 1", "sc_raynor": "StarCraft 1",
    "sc_battlecruiser": "StarCraft 1", "sc_firebat": "StarCraft 1",
    "sc_ghost": "StarCraft 1", "sc_medic": "StarCraft 1", "sc_tank": "StarCraft 1",
    "sc_vulture": "StarCraft 1", "sc_wraith": "StarCraft 1",
    "sc_dropship": "StarCraft 1", "sc_vessel": "StarCraft 1",
    "sc2_abathur": "StarCraft 2", "sc2_alarak": "StarCraft 2",
    "sc2_carrier": "StarCraft 2", "sc2_scv": "StarCraft 2",
    "sc2_stalker": "StarCraft 2", "sc2_stetmann": "StarCraft 2",
}

def main():
    if not PACKS_DIR.is_dir():
        print(f"No packs dir: {PACKS_DIR}", file=sys.stderr)
        sys.exit(1)

    packs = []
    sounds = []

    for pack_dir in sorted(PACKS_DIR.iterdir()):
        if not pack_dir.is_dir():
            continue
        meta_path = pack_dir / "openpeon.json"
        if not meta_path.is_file():
            continue
        meta = json.loads(meta_path.read_text())
        pack_name = meta.get("name", pack_dir.name)
        packs.append({
            "name": pack_name,
            "display": meta.get("display_name", pack_name),
            "group": PACK_GROUP.get(pack_name, "Other"),
            "license": meta.get("license", ""),
            "author": meta.get("author", {}).get("name", ""),
        })
        for cat, body in (meta.get("categories") or {}).items():
            for s in (body.get("sounds") or []):
                rel_file = s["file"]
                sounds.append({
                    "id": f"{pack_name}::{cat}::{rel_file}",
                    "pack": pack_name,
                    "pack_display": meta.get("display_name", pack_name),
                    "group": PACK_GROUP.get(pack_name, "Other"),
                    "category": cat,
                    "category_label": CATEGORY_LABEL.get(cat, cat),
                    "label": s.get("label", Path(rel_file).stem),
                    "file": rel_file,
                    "url": f"packs/{pack_name}/{rel_file}",
                })

    manifest = {
        "category_order": CATEGORY_ORDER,
        "category_labels": CATEGORY_LABEL,
        "group_order": ["Warcraft", "StarCraft 1", "StarCraft 2", "Other"],
        "packs": packs,
        "sounds": sounds,
        "totals": {
            "packs": len(packs),
            "sounds": len(sounds),
        },
    }

    OUT_PATH.write_text(json.dumps(manifest, indent=2))
    print(f"Wrote {OUT_PATH} — {len(packs)} packs, {len(sounds)} sounds")

if __name__ == "__main__":
    main()
