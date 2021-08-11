advancement revoke @s only anticheat:range
tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Range}","color":"gray"}]
effect give @s weakness 5 255 true
