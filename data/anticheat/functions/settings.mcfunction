tellraw @s [{"text":"---------- ","color":"gray"},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":" Einstellungen ----------","color":"gray"}]
execute unless score #entityflight settings matches 0 run tellraw @s [{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #entityflight settings 0"}},{"text":" Entityflight flaggen","color":"white"}]
execute if score #entityflight settings matches 0 run tellraw @s [{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #entityflight settings 1"}},{"text":" Entityflight flaggen","color":"white"}]
execute unless score #ban settings matches 0 run tellraw @s [{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #ban settings 0"}},{"text":" Spieler tempbannen","color":"white"}]
execute if score #ban settings matches 0 run tellraw @s [{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #ban settings 1"}},{"text":" Spieler tempbannen","color":"white"}]
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n-------------------------------------","color":"gray"}

gamerule sendCommandFeedback false
schedule function anticheat:commandfeedback 1t
