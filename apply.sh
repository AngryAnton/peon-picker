#!/bin/bash
# Apply the curated peon-picker disable list.
# Disables 98 of 474 sounds across 26 packs.
# Run AFTER `peon-ping-setup` (see README.md for the pack list).

set -euo pipefail

if ! command -v peon >/dev/null 2>&1; then
  echo "error: 'peon' not on PATH. Install peon-ping first:" >&2
  echo "  brew install PeonPing/tap/peon-ping && peon-ping-setup" >&2
  exit 1
fi

echo "Disabling 98 sounds…"

peon sounds disable task.complete mrrgll.mp3 --pack=murloc
peon sounds disable task.error mrrgll.mp3 --pack=murloc
peon sounds disable input.required mrrgll.mp3 --pack=murloc
peon sounds disable resource.limit mrrgll.mp3 --pack=murloc
peon sounds disable user.spam mrrgll.mp3 --pack=murloc
peon sounds disable task.error AbathurCommander_Auto_UnitsLost00.ogg --pack=sc2_abathur
peon sounds disable task.error AbathurCommander_Lock2Dismiss00.ogg --pack=sc2_abathur
peon sounds disable task.error AbathurCommander_Lock2Negative00.ogg --pack=sc2_abathur
peon sounds disable input.required AbathurCommander_Idle00.ogg --pack=sc2_abathur
peon sounds disable input.required AbathurCommander_Auto_HelpMe00.ogg --pack=sc2_abathur
peon sounds disable input.required AbathurCommander_Auto_HelpMe01.ogg --pack=sc2_abathur
peon sounds disable resource.limit AbathurCommander_BiomassReminder00.ogg --pack=sc2_abathur
peon sounds disable resource.limit AbathurCommander_BrutaliskReminder02.ogg --pack=sc2_abathur
peon sounds disable user.spam AbathurCommander_Lock2Dismiss00.ogg --pack=sc2_abathur
peon sounds disable user.spam AbathurCommander_Lock2Negative00.ogg --pack=sc2_abathur
peon sounds disable task.error AlarakCommander_StructureOvercharge03.ogg --pack=sc2_alarak
peon sounds disable task.error AlarakCommander_StructureOvercharge00.ogg --pack=sc2_alarak
peon sounds disable task.error AlarakCommander_StructureOvercharge04.ogg --pack=sc2_alarak
peon sounds disable input.required AlarakCommander_TopBarLines01.ogg --pack=sc2_alarak
peon sounds disable resource.limit AlarakCommander_EMReady00_ALT.ogg --pack=sc2_alarak
peon sounds disable resource.limit AlarakCommander_EMReady01_ALT.ogg --pack=sc2_alarak
peon sounds disable user.spam AlarakCommander_TopBarLines00.ogg --pack=sc2_alarak
peon sounds disable user.spam AlarakCommander_TopBarLines03.ogg --pack=sc2_alarak
peon sounds disable user.spam AlarakCommander_TopBarLines02.ogg --pack=sc2_alarak
peon sounds disable task.error oblivion-descends.ogg --pack=sc2_carrier
peon sounds disable task.error the-end-has-come.ogg --pack=sc2_carrier
peon sounds disable user.spam GetMeOutOfHere.mp3 --pack=sc2_scv
peon sounds disable user.spam TooYoungToDie.mp3 --pack=sc2_scv
peon sounds disable user.spam Help.mp3 --pack=sc2_scv
peon sounds disable task.error YouMeanInThere.mp3 --pack=sc2_scv
peon sounds disable task.error NotWhatIHadInMind.mp3 --pack=sc2_scv
peon sounds disable task.error ThisSucks.mp3 --pack=sc2_scv
peon sounds disable task.error ouch.mp3 --pack=sc2_stalker
peon sounds disable task.error that-hurt.mp3 --pack=sc2_stalker
peon sounds disable resource.limit enemy-surrounds-us.mp3 --pack=sc2_stalker
peon sounds disable resource.limit fall-back-to-the-shadows.mp3 --pack=sc2_stalker
peon sounds disable user.spam you-look-better-in-the-dark.mp3 --pack=sc2_stalker
peon sounds disable user.spam dont-blink.mp3 --pack=sc2_stalker
peon sounds disable task.error StetmannCommander_Auto_UnitsLost00.ogg --pack=sc2_stetmann
peon sounds disable task.error StetmannCommander_Auto_UnitsLost01.ogg --pack=sc2_stetmann
peon sounds disable task.error StetmannCommander_Auto_UnitsLost02.ogg --pack=sc2_stetmann
peon sounds disable input.required StetmannCommander_Auto_HelpMe00.ogg --pack=sc2_stetmann
peon sounds disable input.required StetmannCommander_Auto_HelpMe01.ogg --pack=sc2_stetmann
peon sounds disable input.required StetmannCommander_Auto_HelpMe02.ogg --pack=sc2_stetmann
peon sounds disable resource.limit StetmannCommander_PowerTowerReminder00.ogg --pack=sc2_stetmann
peon sounds disable resource.limit StetmannCommander_PowerTowerReminder03.ogg --pack=sc2_stetmann
peon sounds disable resource.limit StetmannCommander_PowerFieldReminder00.ogg --pack=sc2_stetmann
peon sounds disable user.spam StetmannCommander_PowerFieldReminder04.ogg --pack=sc2_stetmann
peon sounds disable user.spam StetmannCommander_PowerTowerReminder01.ogg --pack=sc2_stetmann
peon sounds disable user.spam WaterLanding.mp3 --pack=sc_dropship
peon sounds disable user.spam VomitBag.mp3 --pack=sc_dropship
peon sounds disable task.error Death1.mp3 --pack=sc_firebat
peon sounds disable task.error Death2.mp3 --pack=sc_firebat
peon sounds disable user.spam SmellOfNapalm.mp3 --pack=sc_firebat
peon sounds disable user.spam NothingLikeAGoodSmoke.mp3 --pack=sc_firebat
peon sounds disable user.spam NextBarbecue.mp3 --pack=sc_firebat
peon sounds disable user.spam QuestionsAboutPropane.mp3 --pack=sc_firebat
peon sounds disable user.spam PropaneAccessories.mp3 --pack=sc_firebat
peon sounds disable resource.limit IsSomethingBurning.mp3 --pack=sc_firebat
peon sounds disable task.error Death1.mp3 --pack=sc_ghost
peon sounds disable task.error Death2.mp3 --pack=sc_ghost
peon sounds disable user.spam CalledDownTheThunder.mp3 --pack=sc_ghost
peon sounds disable user.spam ReapTheWhirlwind.mp3 --pack=sc_ghost
peon sounds disable user.spam KeepItUp.mp3 --pack=sc_ghost
peon sounds disable resource.limit OverloadAggressionInhibitors.mp3 --pack=sc_ghost
peon sounds disable task.error Death1.mp3 --pack=sc_goliath
peon sounds disable task.error Death1.mp3 --pack=sc_kerrigan
peon sounds disable task.error Death2.mp3 --pack=sc_kerrigan
peon sounds disable user.spam EasilyAmused.mp3 --pack=sc_kerrigan
peon sounds disable user.spam Telepath.mp3 --pack=sc_kerrigan
peon sounds disable user.spam AnnoyingPeople.mp3 --pack=sc_kerrigan
peon sounds disable user.spam GotAJobToDo.mp3 --pack=sc_kerrigan
peon sounds disable task.error Death1.mp3 --pack=sc_marine
peon sounds disable task.error Death2.mp3 --pack=sc_marine
peon sounds disable task.error Death1.mp3 --pack=sc_medic
peon sounds disable task.error HesDeadJim.mp3 --pack=sc_medic
peon sounds disable user.spam AlreadyCheckedYouOut.mp3 --pack=sc_medic
peon sounds disable user.spam AnotherPhysical.mp3 --pack=sc_medic
peon sounds disable user.spam TurnYourHeadAndCough.mp3 --pack=sc_medic
peon sounds disable user.spam ReadyForYourSpongeBath.mp3 --pack=sc_medic
peon sounds disable resource.limit EKGIsFlatlining.mp3 --pack=sc_medic
peon sounds disable task.error Death1.mp3 --pack=sc_raynor
peon sounds disable task.error Death2.mp3 --pack=sc_raynor
peon sounds disable user.spam AintFromAround.mp3 --pack=sc_scv
peon sounds disable user.spam FrogsButt.mp3 --pack=sc_scv
peon sounds disable user.spam ClaustrophobicGetOut.mp3 --pack=sc_scv
peon sounds disable task.error Death1.mp3 --pack=sc_tank
peon sounds disable user.spam AboutToDropTheHammer.mp3 --pack=sc_tank
peon sounds disable user.spam DispenseIndiscriminateJustice.mp3 --pack=sc_tank
peon sounds disable task.error Death1.mp3 --pack=sc_vulture
peon sounds disable user.spam DontHaveTimeToMessAround.mp3 --pack=sc_vulture
peon sounds disable user.spam ScrapYouAlongWithAliens.mp3 --pack=sc_vulture
peon sounds disable user.spam YouKeepPushinMeBoy.mp3 --pack=sc_vulture
peon sounds disable task.error Death1.mp3 --pack=sc_wraith
peon sounds disable user.spam BestStarfighter.mp3 --pack=sc_wraith
peon sounds disable user.spam YoursTruly.mp3 --pack=sc_wraith
peon sounds disable user.spam IAmInvincible.mp3 --pack=sc_wraith
peon sounds disable user.spam annoyed3.wav --pack=wc2_human_ships

echo "Done. Active sounds: 376 across 26 packs."
