clear @s[tag=fooler] minecraft:yellow_concrete[item_name="villager"]
tag @s[tag=fooler] add villager
scoreboard players set @s[tag=fooler] fool_timer 100
title @s[tag=fooler] title {"text":"*不可名状的村民尖叫*","color":"green","bold":true}


give @s[tag=fooler] minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
tag @s[tag=fooler] remove fooler