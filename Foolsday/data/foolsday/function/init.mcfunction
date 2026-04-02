# 清理所有玩家 tag
# tag @a remove fool
tag @a remove fooler
tag @a remove jeb
tag @a remove villager
tag @a remove circle

# 清理掉落物标记
tag @e[type=item] remove processed

scoreboard objectives remove fool_timer
scoreboard objectives remove jeb_timer

scoreboard objectives add fool_timer dummy
scoreboard objectives add jeb_timer dummy

team add fool_red
team add fool_green
team add fool_yellow
team add fool_blue

team modify fool_red color red
team modify fool_green color green
team modify fool_yellow color yellow
team modify fool_blue color blue

say 愚人节数据包重置完成
execute as oldicecube run tag oldicecube list