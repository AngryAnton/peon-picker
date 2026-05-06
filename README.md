# peon-picker

A curated trim of [peon-ping](https://github.com/PeonPing/peon-ping) — Tony Yontas's *excellent* Warcraft / StarCraft / GLaDOS / Helldivers / etc. voice-notification system for AI coding agents. Go star peon-ping. Seriously. It's the actually-clever piece; this repo is just one developer's opinionated config layer on top.

Out of the box, peon-ping ships **165 sound packs** and lets you mix and match. This repo represents *one* taste profile: **26 hand-picked Warcraft + StarCraft 1 + StarCraft 2 packs, 98 individual sounds disabled.** Geared toward "old-Blizzard nostalgia as a coding companion" without the death cries on every error or the medic asking for a sponge bath.

> **No audio in this repo.** Peon-ping downloads sounds from the [OpenPeon](https://peonping.com) registry on your machine. We just publish the curation (which packs, which sounds disabled).

---

## Quick start (use the curated picks)

```bash
# 1. Install peon-ping (it's wonderful, go star it)
brew install PeonPing/tap/peon-ping

# 2. Run setup with the same 26-pack list
peon-ping-setup --packs=peon,peasant,wc2_peasant,wc2_human_ships,murloc,sc_goliath,sc_marine,sc_scv,sc_kerrigan,sc_raynor,sc_battlecruiser,sc_firebat,sc_ghost,sc_medic,sc_tank,sc_vulture,sc_wraith,sc_dropship,sc_vessel,protoss,sc2_abathur,sc2_alarak,sc2_carrier,sc2_scv,sc2_stalker,sc2_stetmann

# 3. Apply the 98 disables
git clone https://github.com/AngryAnton/peon-picker.git
cd peon-picker
bash apply.sh
```

Restart your agent (Claude Code, etc.) and you're done.

---

## What's in the trim

The 26 packs:

| Group        | Packs                                                                                                                                                   |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Warcraft     | `peon` (WC3 Orc), `peasant` (WC3 Human), `wc2_peasant`, `wc2_human_ships`, `murloc`                                                                     |
| StarCraft 1  | `sc_goliath`, `sc_marine`, `sc_scv`, `sc_kerrigan`, `sc_raynor`, `sc_battlecruiser`, `sc_firebat`, `sc_ghost`, `sc_medic`, `sc_tank`, `sc_vulture`, `sc_wraith`, `sc_dropship`, `sc_vessel`, `protoss` |
| StarCraft 2  | `sc2_abathur`, `sc2_alarak`, `sc2_carrier`, `sc2_scv`, `sc2_stalker`, `sc2_stetmann`                                                                    |

Why these:
- **`sc_goliath`** is here because *Goliath online.* is the right energy for "session start"
- WC2 packs included because the term "warcraft 2 sounds" was the thing that made me want this in the first place
- Stronghold, Overwatch, Dota 2, Helldivers, Portal, etc. are great packs in peon-ping — just not the *vibe* I wanted in my coding shell. Run `peon packs list --registry` to browse the full catalogue.

The 98 disables, summarized:

- **Death cries on `task.error`** — every "Bash returned non-zero" was a unit dying scream. Too dark. Most are off; a few of the more functional sounds (Goliath "Comm-link offline", etc.) survive.
- **`user.spam` jokes that didn't land** — propane accessories, sponge baths, "you mean, in there?", aggression posturing. YMMV.
- **Filler commander barks** — SC2 commanders have a lot of `Auto_HelpMe` / `Auto_UnitsLost` / `BiomassReminder` lines that are repetitive in a notification context.
- **Murloc** is reduced to `session.start` and `task.acknowledge` only — two MRRGLs per session is enough comedy.
- The vomiting peasant on `wc2_human_ships`, with no further comment.

Full list: [`decisions.json`](decisions.json).

---

## Use your own taste

If your taste differs (it should!), the picker tool in this repo is what generated `decisions.json`. It's a single static page that previews every sound and lets you click through keep/drop decisions, then exports a shell script you can apply.

```bash
# After peon-ping-setup, in this directory:
python3 build_manifest.py            # builds manifest.json from ~/.openpeon/packs
ln -sf ~/.openpeon/packs ./packs     # so the picker can serve audio
python3 -m http.server 8765 --bind 127.0.0.1
open http://127.0.0.1:8765/
```

Picker keys: `Space` play, `X` drop, `Z` keep, `↑/↓` navigate, `A` autoplay-next. Exports a shell script of `peon sounds disable …` lines you can run directly.

---

## Credit & legal

- **[peon-ping](https://github.com/PeonPing/peon-ping)** by [@tonyyont](https://github.com/tonyyont) is the foundation — voice notifications, plugin marketplace, the whole apparatus. Go give it stars.
- **[OpenPeon registry](https://peonping.com)** hosts the sound packs. Every pack has its own author and license; see the per-pack `openpeon.json` for attribution.
- Voice lines are © Blizzard Entertainment. **This repo distributes none of them** — it only publishes opinion-as-config: which pack IDs to install and which sound IDs to disable. Audio fetching happens on the user's machine via peon-ping.

MIT license on the config + tooling in this repo.
