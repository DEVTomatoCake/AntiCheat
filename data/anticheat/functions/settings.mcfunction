tellraw @s {"text":"-------- Anticheat Einstellungen --------","color":"gray"}
execute unless score #entityflight settings matches 0 run tellraw @s [{"text":"[X]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #entityflight settings 0"}},{"text":" Entityflight wird nicht geflaggt","color":"white"}]
execute if score #entityflight settings matches 0 run tellraw @s [{"text":"[X]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #entityflight settings 1"}},{"text":" Entityflight wird geflaggt","color":"white"}]
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------------","color":"gray"}

gamerule sendCommandFeedback false
schedule function anticheat:commandfeedback 1t
