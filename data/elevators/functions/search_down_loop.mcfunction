# Recursive raycasting downwards to find the elevator
tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ minecraft:white_shulker_box{Lock:"5567353566-5331"} run tag @s add e.found
scoreboard players remove @s e.steps 1
execute if score @s e.steps matches 1.. if entity @s[tag=!e.found] at @s run function elevators:search_down_loop
execute if score @s e.steps matches 0 positioned ~ ~500 ~ run title @p actionbar "No elevator in range below you!"