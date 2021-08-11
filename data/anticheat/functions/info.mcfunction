scoreboard objectives add fly dummy "fly"
scoreboard objectives add flyM minecraft.custom:minecraft.fly_one_cm "speedFly"
scoreboard objectives add notify dummy "notify"
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time "sneak"
scoreboard objectives add sneakcm minecraft.custom:minecraft.crouch_one_cm "sneakcm"
scoreboard objectives add dive minecraft.custom:minecraft.walk_under_water_one_cm "dive"
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm "swim"
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm "walk"
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm "run"
scoreboard objectives add damage minecraft.custom:minecraft.damage_taken "damage"
scoreboard objectives add flags dummy "Flags"
scoreboard players set @a notify 2

tellraw @a {"text":"Anticheat wurde geladen!","color":"gold"}
function anticheat:tick
