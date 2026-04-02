# 检测是否扔出(必须放在前面否则给予物品时会被打fooler)
execute as @e[type=item,nbt={Item: {components: {"minecraft:lore": ['{"bold":true,"color":"green","italic":false,"text":"使用Q键扔出有惊喜"}'], "minecraft:enchantments": {levels: {"minecraft:fortune": 10}}, "minecraft:custom_name": '{"bold":true,"color":"green","italic":false,"text":"愚人棒"}', "minecraft:custom_data": {fool_stick: 1b}}, count: 1, id: "minecraft:end_rod"}},tag=!processed] at @s run tag @a[tag=fool,distance=..3,limit=1,sort=nearest] add fooler
execute as @e[type=item,nbt={Item: {components: {"minecraft:lore": ['{"bold":true,"color":"green","italic":false,"text":"使用Q键扔出有惊喜"}'], "minecraft:enchantments": {levels: {"minecraft:fortune": 10}}, "minecraft:custom_name": '{"bold":true,"color":"green","italic":false,"text":"愚人棒"}', "minecraft:custom_data": {fool_stick: 1b}}, count: 1, id: "minecraft:end_rod"}},tag=!processed] at @s run tag @s add processed
kill @e[type=item,tag=processed]

# 检测是否初次进服
# execute as @a[tag=!fool] run give @s minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
# execute as @a[tag=!fool] run title @s title {"text":"你已成为愚人","bold":true,"color":"green"}
# execute as @a[tag=!fool] run title @s subtitle {"text":"按Q扔出有惊喜","bold":true,"color":"green"}
# execute as @a[tag=!fool] run tag @s add fool
execute as @a[tag=foolgive,tag=fool] run give @s minecraft:end_rod[custom_name='[{"text":"愚人棒","italic":false,"color":"green","bold":true}]',lore=['[{"text":"使用Q键扔出有惊喜","italic":false,"color":"green","bold":true}]'],enchantments={levels:{fortune:10}},custom_data={fool_stick:1b}]
execute as @a[tag=foolgive,tag=fool] run tag @s remove foolgive

# 为有tag的玩家执行随机指令
execute as @a[tag=fooler,tag=fool] at @s run loot give @s loot foolsday:random_effects/random_effects


# 为随机完的玩家执行命令
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:blue_concrete",components:{"minecraft:custom_name":"\"takeoff\""}}]}] run function foolsday:take_off
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:yellow_concrete",components:{"minecraft:item_name":"\"villager\""}}]}] run function foolsday:villager
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:white_concrete",components:{"minecraft:item_name":"\"jeb\""}}]}] run function foolsday:jeb
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:green_concrete",components:{"minecraft:item_name":"\"nausea\""}}]}] run function foolsday:nausea
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:red_concrete",components:{"minecraft:item_name":"\"circle\""}}]}] run function foolsday:circle
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:purple_concrete",components:{"minecraft:item_name":"\"fireworks\""}}]}] run function foolsday:fireworks
execute as @a[tag=fooler,nbt={Inventory:[{id:"minecraft:black_concrete",components:{"minecraft:item_name":"\"size\""}}]}] run function foolsday:size


scoreboard players remove @a[scores={fool_timer=1..}] fool_timer 1

# villager部分
execute as @a[tag=villager,scores={fool_timer=1..}] at @s run playsound minecraft:entity.villager.hurt master @s ~ ~ ~ 100
execute as @a[tag=villager,scores={fool_timer=0}] at @s run tag @s remove villager

# jeb部分
execute as @a[tag=jeb,scores={jeb_timer=4}] at @s run team join fool_red
execute as @a[tag=jeb,scores={jeb_timer=3}] at @s run team join fool_green
execute as @a[tag=jeb,scores={jeb_timer=2}] at @s run team join fool_yellow
execute as @a[tag=jeb,scores={jeb_timer=1}] at @s run team join fool_blue
execute as @a[tag=jeb,scores={jeb_timer=0}] at @s run scoreboard players set @s jeb_timer 5

execute as @a[tag=jeb,scores={fool_timer=1..}] at @s run scoreboard players remove @s jeb_timer 1

execute as @a[tag=jeb,scores={fool_timer=0}] at @s run scoreboard players set @s jeb_timer -1
execute as @a[tag=jeb,scores={fool_timer=0}] at @s run team leave @s
execute as @a[tag=jeb,scores={fool_timer=0}] at @s run tag @s remove jeb

# size部分
execute as @a[tag=size,scores={jeb_timer=4}] at @s run attribute @s minecraft:generic.scale base set 100
execute as @a[tag=size,scores={jeb_timer=2}] at @s run attribute @s minecraft:generic.scale base set 0.01
execute as @a[tag=size,scores={jeb_timer=0}] at @s run scoreboard players set @s jeb_timer 5

execute as @a[tag=size,scores={fool_timer=1..}] at @s run scoreboard players remove @s jeb_timer 1

execute as @a[tag=size,scores={fool_timer=0}] at @s run scoreboard players set @s jeb_timer -1
execute as @a[tag=size,scores={fool_timer=0}] at @s run attribute @s minecraft:generic.scale base set 1
execute as @a[tag=size,scores={fool_timer=0}] at @s run tag @s remove size

# circle部分
execute as @a[tag=circle,scores={fool_timer=1..}] at @s run tp @s ~ ~ ~ ~45 ~20
execute as @a[tag=circle,scores={fool_timer=0}] at @s run tag @s remove circle