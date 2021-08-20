scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] fly
execute as @a[nbt={OnGround:0b}] run scoreboard players add @s fly 1
execute as @a[nbt={OnGround:1b}] run scoreboard players add @s flyM 20
execute as @a[nbt={OnGround:1b}] run scoreboard players set @s fly 0
execute as @a[nbt={Flying:1b}] run scoreboard players set @s fly 0
scoreboard players reset @a[scores={damage=1..}] run
scoreboard players reset @a[scores={damage=1..}] walk
scoreboard players set @a[scores={walk=1..74}] fly 0
scoreboard players set @a[scores={run=1..84}] fly -15
tellraw @a[scores={run=400..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Speed erkannt!","color":"dark_red"}]
tellraw @a[scores={walk=380..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Speed erkannt!","color":"dark_red"}]
execute as @a[scores={run=85..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {speed [run]}","color":"gray"}]
execute as @a[scores={walk=75..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {speed [walk]}","color":"gray"}]
execute as @a[scores={walk=380..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Speed erkannt!","color":"dark_red"},{"text":" {walk}","color":"red"}]
execute as @a[scores={run=400..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Speed erkannt!","color":"dark_red"},{"text":" {run}","color":"red"}]

execute as @a at @s if block ~-.5 ~ ~-.5 water run scoreboard players set @s fly -50
execute as @a at @s if block ~-.5 ~ ~.5 water run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~-.5 water run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~.5 water run scoreboard players set @s fly -50
execute as @a at @s if block ~-.5 ~ ~-.5 lava run scoreboard players set @s fly -50
execute as @a at @s if block ~-.5 ~ ~.5 lava run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~-.5 lava run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~.5 lava run scoreboard players set @s fly -50
execute as @a at @s if block ~-.5 ~ ~-.5 bubble_column run scoreboard players set @s fly -50
execute as @a at @s if block ~-.5 ~ ~.5 bubble_column run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~-.5 bubble_column run scoreboard players set @s fly -50
execute as @a at @s if block ~.5 ~ ~.5 bubble_column run scoreboard players set @s fly -50
execute as @a at @s if block ~ ~ ~ bubble_column run scoreboard players remove @s dive 100
execute as @a at @s if block ~ ~ ~ bubble_column run scoreboard players remove @s swim 150
execute as @a at @s if block ~ ~0.001 ~ water run scoreboard players set @s fly 1
execute as @a at @s if block ~ ~0.001 ~ lava run scoreboard players set @s fly 1
execute as @a at @s if block ~ ~0.001 ~ iron_trapdoor run scoreboard players set @s fly 0
execute as @a at @s if block ~ ~ ~ ladder run scoreboard players set @s fly 0
execute as @a at @s if block ~ ~ ~ vine run scoreboard players set @s fly 1
execute as @a at @s if block ~ ~-1 ~ slime_block run scoreboard players remove @s fly 30
execute as @a at @s if block ~ ~-2 ~ slime_block run scoreboard players remove @s fly 20
execute as @a at @s if block ~ ~-1.9 ~ packed_ice run scoreboard players remove @s run 15
execute as @a at @s if block ~ ~-1.9 ~ ice run scoreboard players remove @s run 15
execute as @a at @s if block ~ ~-1.9 ~ packed_ice run scoreboard players remove @s fly 23
execute as @a at @s if block ~ ~-1.9 ~ ice run scoreboard players remove @s fly 23

execute as @a at @s if block ~ ~ ~ cobweb run scoreboard players set @s fly 0
execute as @a at @s if block ~ ~-1 ~ cobweb run scoreboard players set @s fly 0
execute as @a at @s if block ~ ~1 ~ cobweb run scoreboard players set @s fly 0
scoreboard players set @a[scores={damage=1..}] fly 0
execute as @a[nbt={FallFlying:1b}] run scoreboard players set @s fly 0

execute as @a[nbt={ActiveEffects:[{Id:25b}]}] run scoreboard players remove @s fly 44
execute as @a[nbt={ActiveEffects:[{Amplifier:0b,Id:1b}]}] run scoreboard players remove @s fly 5
execute as @a[nbt={ActiveEffects:[{Amplifier:1b,Id:1b}]}] run scoreboard players remove @s fly 10
execute as @a[nbt={ActiveEffects:[{Amplifier:2b,Id:1b}]}] run scoreboard players remove @s fly 15

execute as @a[nbt={ActiveEffects:[{Amplifier:0b,Id:1b}]}] run scoreboard players remove @s flyM 5
execute as @a[nbt={ActiveEffects:[{Amplifier:1b,Id:1b}]}] run scoreboard players remove @s flyM 10
execute as @a[nbt={ActiveEffects:[{Amplifier:2b,Id:1b}]}] run scoreboard players remove @s flyM 15

execute as @a[scores={run=15..},nbt={ActiveEffects:[{Amplifier:1b,Id:1b}]}] run scoreboard players remove @s run 15
execute as @a[scores={walk=15..},nbt={ActiveEffects:[{Amplifier:1b,Id:1b}]}] run scoreboard players remove @s walk 15
execute as @a[scores={run=20..},nbt={ActiveEffects:[{Amplifier:2b,Id:1b}]}] run scoreboard players remove @s run 20
execute as @a[scores={walk=20..},nbt={ActiveEffects:[{Amplifier:2b,Id:1b}]}] run scoreboard players remove @s walk 20

execute as @a[scores={run=85..}] run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
execute as @a[scores={walk=75..}] run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]

execute at @a[scores={fly=..0}] run kill @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
execute at @a[scores={fly=..0}] run summon marker ~ ~ ~ {Tags:["Marvin+"]}

execute as @e[type=marker,tag=Marvin+] at @s if block ~ ~-1 ~ slime_block run scoreboard players set @p fly 10
execute as @e[type=marker,tag=Marvin+] at @s if block ~ ~-1 ~ slime_block run tp @s @p
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ air if block ~ ~ ~ air run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ air if block ~ ~ ~ air run tp @s @s
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ air run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ air run tp @s @s
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ lava if block ~ ~ ~ air run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ lava if block ~ ~ ~ air run tp @s @s

scoreboard players set @a[scores={damage=1..19}] damage 50
scoreboard players reset @a[scores={damage=20..21}] damage
scoreboard players remove @a[scores={damage=20..}] damage 1
scoreboard players set @a[scores={damage=51..}] damage 50
scoreboard players set @a[scores={damage=20..}] fly 1
scoreboard players set @a[scores={damage=20..}] dive 1
scoreboard players set @a[scores={damage=20..}] swim 1
scoreboard players reset @a[scores={damage=1..}] flyM

execute as @a at @s if block ~ ~-1 ~ sand run scoreboard players remove @s flyM 10
execute as @a at @s if block ~ ~-1 ~ gravel run scoreboard players remove @s flyM 10

scoreboard players set @a[scores={flyM=1250..}] actimeout 1200
execute as @a[scores={flyM=850..}] run tellraw @s [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Teleport erkannt!","color":"dark_red"}]
execute as @a[scores={flyM=850..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Teleport erkannt!","color":"dark_red"}]
effect give @a[scores={flyM=850..}] weakness 3 255 true
effect give @a[scores={flyM=850..}] mining_fatigue 3 255 true

scoreboard players reset @a[gamemode=!survival,gamemode=!adventure] flyM
scoreboard players reset @a[nbt={abilities:{mayfly:1b}}] flyM

scoreboard players remove @a[scores={run=1..}] flyM 25
execute as @a[scores={flyM=85..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {SpeedFly}","color":"gray"}]
execute as @a[scores={flyM=85..}] at @s run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
scoreboard players reset @a flyM

execute as @a[nbt={OnGround:1b}] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run scoreboard players add @s fly 600
execute as @a[scores={run=1..},nbt={OnGround:1b}] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run scoreboard players add @s fly 10

execute as @e[type=marker,tag=Marvin+] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run tp @s ~ ~-0.9 ~

scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] fly
scoreboard players reset @a[nbt={abilities:{mayfly:1b}}] fly

execute as @a[scores={fly=..12}] run scoreboard players set @s flags 0
execute as @a[scores={fly=15..400}] run scoreboard players add @s flags 1
tellraw @a[scores={flags=23..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Du bist nicht mehr stuck!","color":"green"}]
execute as @a[scores={flags=23..}] run effect give @s slow_falling 1 255 true
execute as @a[scores={flags=23..}] at @s run spreadplayers ~ ~ 0 1 false @s
scoreboard players set @a[scores={flags=23..}] fly 8
scoreboard players set @a[scores={flags=23..}] flags 0

execute as @a[scores={fly=15..}] at @s run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
execute as @a[scores={fly=15..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {fly}","color":"gray"}]
execute as @a[scores={fly=15..}] at @e[type=marker,tag=Marvin+,sort=nearest,limit=1] if block ~ ~-1 ~ air run tp @p ~ ~ ~
execute as @a[scores={fly=15..}] run scoreboard players remove @s fly 3

execute as @a[scores={sneak=1..,run=35..}] run tp @s @s
execute as @a[scores={sneak=1..,run=35..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:1} ","color":"red"},{"text":"[run,sneak] ","color":"red"},{"score":{"name":"@s","objective":"run"},"color":"green"}]

execute as @a[scores={sneak=1..,walk=20..}] run tp @s @s
tellraw @a[scores={sneak=1..,walk=20..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:2}","color":"yellow"}]
execute as @a[scores={sneak=1..,walk=20..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:2} ","color":"yellow"},{"text":"[walk,sneak]","color":"red"}]

execute as @a[scores={sneak=1..,sneakcm=31..}] run tp @s @s
tellraw @a[scores={sneak=1..,sneakcm=31..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:3}","color":"yellow"}]
execute as @a[scores={sneak=1..,sneakcm=31..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:3} ","color":"yellow"},{"text":"[speed,sneak] ","color":"red"},{"score":{"name":"@s","objective":"sneakcm"},"color":"green"}]

execute as @a[scores={sneak=1..,walk=1..,run=1..}] run tp @s @s
tellraw @a[scores={sneak=1..,walk=1..,run=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:4}","color":"dark_red"}] 
execute as @a[scores={sneak=1..,walk=1..,run=1..}] run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:4} ","color":"dark_red"},{"text":"[run,walk,sneak]","color":"red"}]

effect give @a[scores={sneak=1..,run=35..}] slowness 1 255 true
effect give @a[scores={sneak=1..,run=35..}] jump_boost 1 244 true
effect give @a[scores={sneak=1..,walk=20..}] slowness 2 255 true
effect give @a[scores={sneak=1..,walk=20..}] jump_boost 2 244 true
effect give @a[scores={sneak=1..,sneakcm=31..}] slowness 3 255 true
effect give @a[scores={sneak=1..,sneakcm=31..}] jump_boost 3 244 true
effect give @a[scores={sneak=1..,walk=1..,run=1..}] slowness 4 244 true
effect give @a[scores={sneak=1..,walk=1..,run=1..}] jump_boost 4 244 true
scoreboard players reset @a[scores={sneak=1..}] sneak
scoreboard players reset @a[scores={sneakcm=1..}] sneakcm

execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @s [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™️","color":"gold"},{"text":"] "},{"text":"Jesus Hack erkannt!","color":"dark_red"}]
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @s [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™️","color":"gold"},{"text":"] "},{"text":"Nur Jesus läuft übers Wasser!","color":"dark_red"}]
execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™️","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Jesus","color":"dark_red"},{"text":" {walk}","color":"red"}]
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @a[scores={notify=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™️","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Jesus","color":"dark_red"},{"text":" {run}","color":"red"}]
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tp @s ~ ~-1 ~ ~180 ~
execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tp @s ~ ~-1 ~ ~180 ~

scoreboard players reset @a run
scoreboard players reset @a walk

scoreboard players reset @a[scores={fly=401..}] dive
scoreboard players reset @a[scores={fly=401..}] swim
scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] swim
scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] dive

scoreboard players set @a[scores={swim=600..}] actimeout 1200
execute as @a[scores={swim=..75}] at @s run tp @e[type=marker,tag=Marvin+,sort=nearest,limit=1] @s
execute as @a[scores={swim=100..}] at @s run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
execute as @a[scores={swim=100..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Waterspeed [swim]}","color":"gray"}]
scoreboard players reset @a swim

scoreboard players set @a[scores={dive=600..}] actimeout 1200
execute as @a[scores={dive=..80}] at @s run tp @e[type=marker,tag=Marvin+,sort=nearest,limit=1] @s
execute as @a[scores={dive=100..}] at @s run tp @s @e[type=marker,tag=Marvin+,sort=nearest,limit=1]
execute as @a[scores={dive=100..}] run tellraw @a[scores={notify=2..}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" wurde geflaggt {Waterspeed [dive]}","color":"gray"}]
scoreboard players reset @a dive

schedule function anticheat:tick 1t
