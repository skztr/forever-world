# Must run as a specific player.
# Begins the game
tellraw @s[tag=foreverworld_debug] {"text":"foreverworld:death/resurrect"}

# Reset to begining-of-day (you may wish to remove this for multiplayer)
function foreverworld:sunrise

# Clear Inventory (shouldn't be necessary, but good for the initial run)
clear @s

# Teleport to a random position within the world
# The fourth number here is the one to tweak to increase/decrease discovery probability
spreadplayers 0 0 0 24000 true @s
execute store result score @s fwspawnx run data get entity @s Pos[0]
execute store result score @s fwspawny run data get entity @s Pos[1]
execute store result score @s fwspawnz run data get entity @s Pos[2]
function foreverworld:spawnpoint/first

execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @s[tag=foreverworld_debug] run tellraw @s {"text":"spread"}
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/location
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/end

gamemode survival @s
tag @s remove foreverworld_died
tag @s remove foreverworld_died_fake
tag @s remove foreverworld_death_cleared
tag @s remove foreverworld_death_ready
