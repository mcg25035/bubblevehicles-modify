# Tick counter for rotation update
scoreboard players add $TickCounter bubblevehicles 1
execute if score $TickCounter bubblevehicles matches $RotationTickInterval buvs.const run scoreboard players set $TickCounter bubblevehicles 0

# Conditional Steering
execute if score @s bvehicle.speed matches ..999 buvs.const run function bubblevehicles:vehicles/abstracts/controller/steering
execute if score @s bvehicle.speed matches 1000 buvs.const.. if score $TickCounter bubblevehicles matches 0 run execute as @s at @s run data modify entity @s Rotation[0] set from entity @p Rotation[0]
execute unless score @s bvehicle.speed matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/moving
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/acceleration
function bubblevehicles:vehicles/abstracts/controller/gears
execute if entity @e[type=marker, tag=btemp.origin, limit=1, tag=-buvs.nitro_boost] run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/nitro
execute if score @s bvehicle.speed matches 0 run data modify entity @s NoGravity set value 1b
execute as @s[tag=buvs.POLICE_INTERCEPTOR] run function #bubblevehicles:vehicle/police_interceptor
execute as @s[tag=buvs.POLICE_CRUISER] run function #bubblevehicles:vehicle/police_cruiser
execute as @s[tag=buvs.AMBULANCE] run function #bubblevehicles:vehicle/ambulance
execute as @s[tag=buvs.TANK] run function #bubblevehicles:vehicle/tank
execute as @s[tag=buvs.DRILL] run function #bubblevehicles:vehicle/drill