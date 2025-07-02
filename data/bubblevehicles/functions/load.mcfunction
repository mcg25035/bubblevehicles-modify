#  Scoreboards
scoreboard objectives add bubblevehicles dummy "BubbleVehicles"
scoreboard objectives add buvs.registry dummy "BUVS Registry"
scoreboard objectives add buvs.settings dummy "BUVS Settings"
scoreboard objectives add buvs.leave_game dummy "BUVS Leave Game"
execute store success score $HasUpdated bubblevehicles run scoreboard objectives add buvs.version dummy
scoreboard players set $DataVersion buvs.version 322

scoreboard objectives add bvehicle.vectorX dummy "BVehicle Vector X"
scoreboard objectives add bvehicle.vectorZ dummy "BVehicle Vector Y"
scoreboard objectives add bvehicle.vectorA dummy "BVehicle Vector A"
scoreboard objectives add buvsInput.angle dummy
scoreboard objectives add buvsInput.value dummy

scoreboard objectives add buvs.max_speed dummy "Vehicle Max Speed"
scoreboard objectives add buvs.min_speed dummy "Vehicle Min Speed"
scoreboard objectives add buvs.accelerate0 dummy "Vehicle Gear -1 Acceleration"
scoreboard objectives add buvs.accelerate1 dummy "Vehicle Gear 1 Acceleration"
scoreboard objectives add buvs.accelerate2 dummy "Vehicle Gear 2 Acceleration"
scoreboard objectives add buvs.accelerate3 dummy "Vehicle Gear 3 Acceleration"
scoreboard objectives add buvs.accelerate4 dummy "Vehicle Gear 4 Acceleration"
scoreboard objectives add buvs.accelerate5 dummy "Vehicle Gear 5 Acceleration"
scoreboard objectives add buvs.accelerate6 dummy "Vehicle Gear 6 Acceleration"
scoreboard objectives add buvs.engine_type dummy "Vehicle Engine Type"
scoreboard objectives add buvs.paint_type dummy "Vehicle Paint Type"
scoreboard objectives add buvs.tank_cap dummy "Vehicle Tank Capacity"
scoreboard objectives add buvs.tank_mod dummy "Vehicle Tank Modifier"
scoreboard objectives add buvs.gears_count dummy "Vehicle Gears Count"
scoreboard objectives add buvs.inventory dummy "Vehicle Inventory"
scoreboard objectives add buvs.health dummy "Vehicle Health"
scoreboard objectives add buvs.health_cap dummy "Vehicle Health Cap"
scoreboard objectives add buvs.actions dummy "Vehicle Actions"

scoreboard objectives add buvs.MaxSpeed dummy
scoreboard objectives add buvs.MinSpeed dummy
scoreboard objectives add buvs.Gear0 dummy
scoreboard objectives add buvs.Gear1 dummy
scoreboard objectives add buvs.Gear2 dummy
scoreboard objectives add buvs.Gear3 dummy
scoreboard objectives add buvs.Gear4 dummy
scoreboard objectives add buvs.Gear5 dummy
scoreboard objectives add buvs.Gear6 dummy
scoreboard objectives add buvs.TankCap dummy
scoreboard objectives add buvs.Items dummy

scoreboard objectives add bvehicle.action dummy "BVehicle Action"
scoreboard objectives add bvehicle.health dummy "BVehicle Health"
scoreboard objectives add bvehicle.speed dummy "BVehicle Speed"
scoreboard objectives add bvehicle.brake dummy "BVehicle Brake"
scoreboard objectives add bvehicle.sound dummy "BVehicle Sound"
scoreboard objectives add bvehicle.fuel dummy "BVehicle Fuel Level"
scoreboard objectives add bvehicle.gear dummy "BVehicle Gear"
scoreboard objectives add bvehicle.upwards dummy "BVehicle Upwards"

scoreboard objectives add bvdata.digit0 dummy
scoreboard objectives add bvdata.digit1 dummy
scoreboard objectives add bvdata.digit2 dummy
scoreboard objectives add bvdata.digit3 dummy
scoreboard objectives add bvdata.color1 dummy
scoreboard objectives add bvdata.color2 dummy
scoreboard objectives add bvdata.color3 dummy
scoreboard objectives add bvdata.timer1 dummy
scoreboard objectives add bvdata.timer2 dummy
scoreboard objectives add bvdata.timer3 dummy
scoreboard objectives add bvdata.timer4 dummy
scoreboard objectives add bvdata.upgrade0 dummy "Max Speed"
scoreboard objectives add bvdata.upgrade1 dummy "Acceleration"
scoreboard objectives add bvdata.upgrade2 dummy "Gas Tank Capacity"
scoreboard objectives add bvdata.upgrade3 dummy "Nitro Boost"
scoreboard objectives add bvdata.upgrade4 dummy "Glove Box"

#  Team
team add bubblevehicles "BubbleVehicles"
team modify bubblevehicles seeFriendlyInvisibles false
team modify bubblevehicles collisionRule never


#  Outdated
execute if score $HasUpdated bubblevehicles matches 1 run function bubblevehicles:settings/update

execute store success score $OldVersion bubblevehicles run scoreboard objectives remove buvs.vectorSpeed
execute if score $OldVersion bubblevehicles matches 1 run function bubblevehicles:settings/uninstall_outdated_version

#  Settings
execute unless score $RenderDistance buvs.settings matches -2147483648..2147483647 run scoreboard players set $RenderDistance buvs.settings 3
execute unless score $ProjectileType buvs.settings matches -2147483648..2147483647 run scoreboard players set $ProjectileType buvs.settings 1
execute unless score $LoadMessage buvs.settings matches -2147483648..2147483647 run scoreboard players set $LoadMessage buvs.settings 1
execute unless score $RegisterMessage buvs.settings matches -2147483648..2147483647 run scoreboard players set $RegisterMessage buvs.settings 1
execute unless score $VillagerSpawning buvs.settings matches -2147483648..2147483647 run scoreboard players set $VillagerSpawning buvs.settings 1
execute unless score $VehicleDamaging buvs.settings matches -2147483648..2147483647 run scoreboard players set $VehicleDamaging buvs.settings 1
execute unless score $FuelUsage buvs.settings matches -2147483648..2147483647 run scoreboard players set $FuelUsage buvs.settings 1
schedule function bubblevehicles:vehicles/abstracts/player/is_datapack_broken 5t append

#  Const
scoreboard objectives add buvs.const dummy
scoreboard players set -100 buvs.const -100
scoreboard players set -1 buvs.const -1
scoreboard players set 2 buvs.const 2
scoreboard players set 3 buvs.const 3
scoreboard players set 4 buvs.const 4
scoreboard players set 6 buvs.const 6
scoreboard players set 7 buvs.const 7
scoreboard players set 20 buvs.const 20
scoreboard players set 32 buvs.const 32
scoreboard players set 100 buvs.const 100
scoreboard players set 400 buvs.const 400
scoreboard players set 1000 buvs.const 1000
scoreboard players set $RotationSpeedThreshold buvs.const 1000
scoreboard players set $RotationSpeedThresholdMinus1 buvs.const 999
scoreboard players set $RotationTickInterval buvs.const 3
scoreboard players set $DamageThreshold buvs.const 400

#  Message
execute unless score $LoadMessage buvs.settings matches 0 run say §a§lBubbleVehicles 3.3c §r§edatapack loaded