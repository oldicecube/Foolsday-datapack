clear @s[tag=fooler] minecraft:blue_concrete[custom_name="takeoff"]
effect give @s[tag=fooler] levitation 1 255 true

title @s[tag=fooler] title {"text":"飞起来!!!","color":"green","bold":true}

give @s[tag=fooler] minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
tag @s[tag=fooler] remove fooler