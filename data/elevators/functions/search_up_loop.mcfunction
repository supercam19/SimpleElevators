# Recursive raycasting upwards to find the elevator
tp @s ~ ~1 ~
execute if block ~ ~ ~ minecraft:white_shulker_box{Lock:"5567353566-5331"} run tag @s add e.found
scoreboard players remove @s e.steps 1
execute if score @s e.steps matches 1.. if entity @s[tag=!e.found] at @s run function elevators:search_up_loop
execute if score @s e.steps matches 0 positioned ~ ~-500 ~ run title @p actionbar "No elevator in range above you!"