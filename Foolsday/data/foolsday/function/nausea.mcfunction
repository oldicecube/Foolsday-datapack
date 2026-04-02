clear @s[tag=fooler] minecraft:green_concrete[item_name="nausea"]
effect give @s[tag=fooler] nausea 20 255 true

title @s[tag=fooler] title {"text":"*你感到一阵天旋地转","color":"green","bold":true}

give @s[tag=fooler] minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
tag @s[tag=fooler] remove fooler