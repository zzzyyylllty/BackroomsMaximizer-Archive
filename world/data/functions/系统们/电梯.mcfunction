﻿
scoreboard players add 清理 清理 1
scoreboard players operation @a 清理 = 清理 清理

#提示
execute @r[score_清理_min=3000,score_清理=3000] ~ ~ ~ tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"BRMserver","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"物资已刷新","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=3000,score_清理=3000] ~ ~ ~ fill 5129 5 4888 5129 5 4888 redstone_block
execute @r[score_清理_min=6000,score_清理=6000] ~ ~ ~ tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"BRMserver","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"  即将在  ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"10","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 秒后清杀部分实体","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=6125,score_清理=6125] ~ ~ ~ tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"BRMserver","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"  即将在  ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"5","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 秒后清杀部分实体","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=6175,score_清理=6175] ~ ~ ~ tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"BRMserver","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"  即将在  ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"3","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 秒后清杀部分实体","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=6225,score_清理=6225] ~ ~ ~ tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"BRMserver","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"  即将在  ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"1","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 秒后清杀部分实体","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=6250,score_清理=6250] ~ ~ ~ kill @e[tag=!不清理]
execute @r[score_清理_min=6251,score_清理=6251] ~ ~ ~ tellraw @a [{"text":"[清理器]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"清理实体完成","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @r[score_清理_min=6300] ~ ~ ~ scoreboard players reset * 清理

#给免疫实体加标签
scoreboard players tag @a add 不清理
scoreboard players tag @e[type=villager] add 不清理
scoreboard players tag @e[type=armor_stand] add 不清理
scoreboard players tag @e[type=item_frame] add 不清理