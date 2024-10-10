#转化比率为10
scoreboard players set a ZH 10

#求准确伤害
execute @a[score_ZC_min=0] ~ ~ ~ scoreboard players operation @s ZC1 = @s ZC
execute @a[score_ZC_min=0] ~ ~ ~ scoreboard players operation @s ZC /= a ZH
execute @a[score_ZC_min=0] ~ ~ ~ scoreboard players operation @s ZC1 %= a ZH

#标题显示
title @a[score_ZC_min=0] times 0 15 0
execute @a[score_ZC_min=0] ~ ~ ~ title @s title [{"text":""}]
execute @a[score_ZC1=0] ~ ~ ~ title @s subtitle [{"text":"[系统提示]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您对Ta造成了","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"ZC","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"点伤害","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_ZC1_min=1] ~ ~ ~ title @s subtitle [{"text":"[系统提示]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您对Ta造成了","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"ZC","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":".","color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"score":{"objective":"ZC1","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"点伤害","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#重置计分板
scoreboard players reset @a ZC
scoreboard players reset @a ZC1

#求准确伤害
execute @a[score_SD_min=0] ~ ~ ~ scoreboard players operation @s SD1 = @s SD
execute @a[score_SD_min=0] ~ ~ ~ scoreboard players operation @s SD /= a ZH
execute @a[score_SD_min=0] ~ ~ ~ scoreboard players operation @s SD1 %= a ZH

#标题提示
title @a[score_SD_min=0] times 0 15 0
execute @a[score_SD_min=0] ~ ~ ~ title @s title [{"text":""}]
execute @a[score_SD1=0] ~ ~ ~ title @s subtitle [{"text":"[系统提示]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您受到了","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"SD","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"点伤害","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute @a[score_SD1_min=1] ~ ~ ~ title @s subtitle [{"text":"[系统提示]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"您受到了","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"SD","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":".","color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"score":{"objective":"SD1","name":"@s"},"color":"red","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false},{"text":"点伤害","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#重置计分板
scoreboard players reset @a SD
scoreboard players reset @a SD1
