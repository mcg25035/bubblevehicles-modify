# Display current vehicle speed to the driver
execute as @s at @s run scoreboard players operation &SpeedDisplay bubblevehicles = @s bvehicle.speed
scoreboard players operation &SpeedDisplay bubblevehicles *= 10 buvs.const
scoreboard players operation &SpeedDisplay bubblevehicles /= 100 buvs.const

# Get the integer part
scoreboard players operation &SpeedInt bubblevehicles = &SpeedDisplay bubblevehicles
scoreboard players operation &SpeedInt bubblevehicles /= 10 buvs.const

# Get the decimal part (first digit after decimal)
scoreboard players operation &SpeedDecimal bubblevehicles = &SpeedDisplay bubblevehicles
scoreboard players operation &SpeedDecimal bubblevehicles %= 10 buvs.const

# Determine color based on speed (using the original bvehicle.speed for ranges)
execute if score @s bvehicle.speed matches ..799 run scoreboard players set &SpeedColor bubblevehicles 0
execute if score @s bvehicle.speed matches 800..1199 run scoreboard players set &SpeedColor bubblevehicles 1
execute if score @s bvehicle.speed matches 1200.. run scoreboard players set &SpeedColor bubblevehicles 2

# Corrected Tellraw commands with conditional execution
execute if score &SpeedColor bubblevehicles matches 0 run title @p actionbar [{"text":"Current Speed: ","color":"yellow"},{"score":{"name":"&SpeedInt","objective":"bubblevehicles"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"&SpeedDecimal","objective":"bubblevehicles"},"color":"yellow"},{"text":" blocks/sec","color":"yellow"}]
execute if score &SpeedColor bubblevehicles matches 1 run title @p actionbar [{"text":"Current Speed: ","color":"gold"},{"score":{"name":"&SpeedInt","objective":"bubblevehicles"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"&SpeedDecimal","objective":"bubblevehicles"},"color":"gold"},{"text":" blocks/sec","color":"gold"}]
execute if score &SpeedColor bubblevehicles matches 2 run title @p actionbar [{"text":"Current Speed: ","color":"red"},{"score":{"name":"&SpeedInt","objective":"bubblevehicles"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"&SpeedDecimal","objective":"bubblevehicles"},"color":"red"},{"text":" blocks/sec","color":"red"}]