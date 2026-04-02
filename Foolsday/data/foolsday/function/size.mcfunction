clear @s[tag=fooler] minecraft:black_concrete[item_name="size"]

tag @s[tag=fooler] add size
scoreboard players set @s[tag=fooler] fool_timer 200
scoreboard players set @s[tag=fooler] jeb_timer 3
title @s[tag=fooler] title {"text":"《随地大小变》","color":"green","bold":true}

give @s[tag=fooler] minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
tag @s[tag=fooler] remove fooler