advancement revoke @s only anticheat:range
tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" wurde geflaggt {Range}","color":"dark_red"}]
effect give @s weakness 5 255 true
