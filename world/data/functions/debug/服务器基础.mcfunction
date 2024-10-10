scoreboard objectives add 计时清理 dummy ["计时清理"]
scoreboard objectives add 计时刷新 dummy ["计时刷新"]
gamemode 2 @a[tag=!op,m=!2]
tp @a[tag=uid]
effect @e[type=villager] 11 10 254
scoreboard teams join 红莲 @a[team=]
scoreboard players add @e[type=item] 计时清理 1
kill @e[type=item,score_计时清理_min=1]
scoreboard players add @e 计时刷新 1
