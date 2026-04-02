clear @s[tag=fooler] minecraft:red_concrete[item_name="circle"]
tag @s[tag=fooler] add circle
scoreboard players set @s fool_timer 100
title @s[tag=fooler] title {"text":"高燃硬控中......","color":"green","bold":true}


give @s[tag=fooler] minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
tag @s[tag=fooler] remove fooler