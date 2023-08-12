execute as @a at @s if score @s e.jumped matches 1.. if block ~ ~-1 ~ white_shulker_box{Lock:"5567353566-5331"} run function elevators:find_upper
execute as @a at @s if score @s e.sneakTime matches 1.. if block ~ ~-1 ~ white_shulker_box{Lock:"5567353566-5331"} if score @s e.cooldown matches ..0 run function elevators:find_lower
scoreboard players set @a e.jumped 0
scoreboard players set @a e.sneakTime 0
scoreboard players remove @a e.cooldown 1