summon marker ~ ~-1 ~ {Tags:["e.search"]}
data modify entity @e[type=marker,tag=e.search,limit=1, sort=nearest] Rotation set from entity @p
scoreboard players set @e[tag=e.search] e.steps 500
execute as @e[tag=e.search,sort=nearest,limit=1] at @s run function elevators:search_down_loop
execute if entity @e[tag=e.found] run tp @s @e[tag=e.found, sort=nearest, limit=1]
execute if entity @e[tag=e.found] at @s run tp @s ~ ~1 ~
execute if entity @e[tag=e.found] run scoreboard players set @s e.cooldown 8
kill @e[tag=e.search, sort=nearest, limit=1]